local hsluv = require("tokyonight.hsluv")

local util = {}

util.colorsUsed = {}
util.colorCache = {}

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

function util.brighten(color, percentage)
  local hsl = hsluv.hex_to_hsluv(color)
  local larpSpace = 100 - hsl[3]
  if percentage < 0 then larpSpace = hsl[3] end
  hsl[3] = hsl[3] + larpSpace * percentage
  return hsluv.hsluv_to_hex(hsl)
end

function util.getDayColor(color)
  if color ~= "NONE" then
    if color ~= "NONE" then
      local hsl = hsluv.hex_to_hsluv(color)
      hsl[3] = 100 - hsl[3]
      if hsl[3] < 40 then hsl[3] = hsl[3] + (100 - hsl[3]) * .3 end
      return hsluv.hsluv_to_hex(hsl)
    end
  end
  return color
end

function util.getColor(color, config)
  if config.style ~= "day" then return color end
  if not util.colorCache[color] then util.colorCache[color] = util.getDayColor(color) end
  return util.colorCache[color]
end

function util.highlight(group, color, opts)
  if color.fg then util.colorsUsed[color.fg] = true end
  if color.bg then util.colorsUsed[color.bg] = true end
  if color.sp then util.colorsUsed[color.sp] = true end

  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. util.getColor(color.fg, opts) or "guifg=NONE"
  local bg = color.bg and "guibg=" .. util.getColor(color.bg, opts) or "guibg=NONE"
  local sp = color.sp and "guisp=" .. util.getColor(color.sp, opts) or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

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

function util.syntax(syntax, opts)
  for group, colors in pairs(syntax) do util.highlight(group, colors, opts) end
end

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
  util.syntax(theme.base, theme.config)

  -- load syntax for plugins and terminal async
  local async
  async = vim.loop.new_async(vim.schedule_wrap(function()
    util.terminal(theme.colors)
    util.syntax(theme.plugins, theme.config)
    util.autocmds(theme.config)
    async:close()
  end))
  async:send()

end

---@param config Config
---@param colors ColorScheme
function util.color_overrides(colors, config)
  if type(config.colors) == "table" then
    for key, value in pairs(config.colors) do
      if not colors[key] then error("Color " .. key .. " does not exist") end
      if string.sub(value, 1, 1) == "#" then
        -- hex override
        colors[key] = value
      else
        -- another group
        if not colors[value] then error("Color " .. value .. " does not exist") end
        colors[key] = colors[value]
      end
    end
  end
end

function util.light()
  for hl_name, hl in pairs(vim.api.nvim__get_hl_defs(0)) do
    local def = {}
    for key, def_key in pairs({ foreground = "fg", background = "bg", special = "sp" }) do
      if type(hl[key]) == "number" then
        local hex = string.format("#%06x", hl[key])
        local color = util.getDayColor(hex)
        table.insert(def, "gui" .. def_key .. "=" .. color)
      end
    end
    if hl_name ~= "" and #def > 0 then
      for _, style in pairs({ "bold", "italic", "underline", "undercurl" }) do
        if hl[style] then table.insert(def, "gui=" .. style) end
      end

      vim.cmd("highlight! " .. hl_name .. " " .. table.concat(def, " "))
    end
  end
end

return util

