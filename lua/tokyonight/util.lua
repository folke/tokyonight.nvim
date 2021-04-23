local util = {}

util.colorsUsed = {}

util.bg = "#000000"
util.fg = "#ffffff"

local function hexToRgb(hex_str)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function util.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * (fg[i]) + ((1 - alpha) * (bg[i])))
    return math.floor(math.min(math.max(0, ret), 255) + .5)
  end

  return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

function util.darken(hex, amount, bg) return util.blend(hex, bg or util.bg, math.abs(amount)) end
function util.lighten(hex, amount, fg) return util.blend(hex, fg or util.fg, math.abs(amount)) end

function util.highlight(group, color)
  if color.fg then util.colorsUsed[color.fg] = true end
  if color.bg then util.colorsUsed[color.bg] = true end
  if color.sp then util.colorsUsed[color.sp] = true end

  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local cfg = color.fg and "ctermfg=" .. util.gui2cterm(color.fg) or "ctermfg=NONE"
  local cbg = color.bg and "ctermbg=" .. util.gui2cterm(color.bg) or "ctermbg=NONE"
  local cstyle = color.style and "cterm=" .. color.style or "cterm=NONE"

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  if vim.g.tokyonight_cterm_colors == true or vim.g.tokyonight_cterm_colors == 1 then
    hl = hl .. " " .. cfg .. " " .. cbg .. " " .. cstyle
  end

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

function util.debug(colors)
  colors = colors or require("tokyonight.colors")
  -- Dump unused colors
  for name, color in pairs(colors) do
    if type(color) == "table" then
      util.debug(color)
    else
      if util.colorsUsed[color] == nil then print("not used: " .. name .. " : " .. color) end
    end
  end
end

--- Delete the autocmds when the theme changes to something else
function util.onColorScheme()
  if vim.g.colors_name ~= "tokyonight" then
    vim.cmd [[autocmd! TokyoNight]]
    vim.cmd [[augroup! TokyoNight]]
  end
end

---@param config Config
function util.autocmds(config)
  vim.cmd [[augroup TokyoNight]]
  vim.cmd [[  autocmd!]]
  vim.cmd [[  autocmd ColorScheme * lua require("tokyonight.util").onColorScheme()]]
  if config.dev then
    vim.cmd [[  autocmd BufWritePost */lua/tokyonight/** nested colorscheme tokyonight]]
  end
  for _, sidebar in ipairs(config.sidebars) do
    if sidebar == "terminal" then
      vim.cmd [[  autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]]
    else
      vim.cmd([[  autocmd FileType ]] .. sidebar ..
                [[ setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
    end
  end
  vim.cmd [[augroup end]]
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function util.template(str, table)
  return (str:gsub("($%b{})", function(w) return table[w:sub(3, -2)] or w end))
end

function util.syntax(syntax) for group, colors in pairs(syntax) do util.highlight(group, colors) end end

---@param colors ColorScheme
function util.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.terminal_black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

---@param theme Theme
function util.load(theme)
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight"

  -- load base theme
  util.syntax(theme.base)

  -- load syntax for plugins and terminal async
  local async
  async = vim.loop.new_async(vim.schedule_wrap(function()
    util.terminal(theme.colors)
    util.syntax(theme.plugins)
    util.autocmds(theme.config)
    async:close()
  end))
  async:send()

end

local xterm_colors = nil
local xterm_color_map = {}

function util.gui2cterm(color)
  if not xterm_colors then
    xterm_colors = {}
    for i, n in ipairs({ 47, 68, 40, 40, 40, 21 }) do
      for _ = 1, n, 1 do table.insert(xterm_colors, i - 1) end
    end
  end

  if xterm_color_map[color] then return xterm_color_map[color] end

  local rgb = hexToRgb(color)
  local r = rgb[1]
  local g = rgb[2]
  local b = rgb[3]

  local mx = math.max(r, g, b)
  local mn = math.min(r, g, b)

  if (mx - mn) * (mx + mn) <= 6250 then
    local c = 24 - math.floor((252 - math.floor((r + g + b) / 3)) / 10)
    if 0 <= c and c <= 23 then
      xterm_color_map[color] = 232 + c
      return xterm_color_map[color]
    end
  end

  xterm_color_map[color] = 16 + 36 * xterm_colors[r + 1] + 6 * xterm_colors[g + 1] +
                             xterm_colors[b + 1]
  return xterm_color_map[color]
end

return util

