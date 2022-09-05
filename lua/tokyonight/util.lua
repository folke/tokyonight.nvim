local hsluv = require("tokyonight.hsluv")

local util = {}

util.colorsUsed = {}

util.bg = "#000000"
util.fg = "#ffffff"
util.day_brightness = 0.3

---@param c  string
local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(fg, bg, alpha)
  bg = hexToRgb(bg)
  fg = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function util.darken(hex, amount, bg)
  return util.blend(hex, bg or util.bg, math.abs(amount))
end
function util.lighten(hex, amount, fg)
  return util.blend(hex, fg or util.fg, math.abs(amount))
end

function util.brighten(color, percentage)
  local hsl = hsluv.hex_to_hsluv(color)
  local larpSpace = 100 - hsl[3]
  if percentage < 0 then
    larpSpace = hsl[3]
  end
  hsl[3] = hsl[3] + larpSpace * percentage
  return hsluv.hsluv_to_hex(hsl)
end

function util.invert_color(color)
  if color ~= "NONE" then
    local hsl = hsluv.hex_to_hsluv(color)
    hsl[3] = 100 - hsl[3]
    if hsl[3] < 40 then
      hsl[3] = hsl[3] + (100 - hsl[3]) * util.day_brightness
    end
    return hsluv.hsluv_to_hex(hsl)
  end
  return color
end

-- local ns = vim.api.nvim_create_namespace("tokyonight")
function util.highlight(group, color)
  if color.fg then
    util.colorsUsed[color.fg] = true
  end
  if color.bg then
    util.colorsUsed[color.bg] = true
  end
  if color.sp then
    util.colorsUsed[color.sp] = true
  end

  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  if color.link then
    vim.cmd("highlight! link " .. group .. " " .. color.link)
  else
    -- local data = {}
    -- if color.fg then data.foreground = color.fg end
    -- if color.bg then data.background = color.bg end
    -- if color.sp then data.special = color.sp end
    -- if color.style then data[color.style] = true end
    -- vim.api.nvim_set_hl(ns, group, data)
    vim.cmd(hl)
  end
end

function util.debug(colors)
  colors = colors or require("tokyonight.colors")
  -- Dump unused colors
  for name, color in pairs(colors) do
    if type(color) == "table" then
      util.debug(color)
    else
      if util.colorsUsed[color] == nil then
        print("not used: " .. name .. " : " .. color)
      end
    end
  end
end

--- Delete the autocmds when the theme changes to something else
function util.onColorScheme()
  if vim.g.colors_name ~= "tokyonight" then
    vim.cmd([[autocmd! TokyoNight]])
    vim.cmd([[augroup! TokyoNight]])
  end
end

---@param config Config
function util.autocmds(config)
  vim.cmd([[augroup TokyoNight]])
  vim.cmd([[  autocmd!]])
  vim.cmd([[  autocmd ColorScheme * lua require("tokyonight.util").onColorScheme()]])
  if config.dev then
    vim.cmd([[  autocmd BufWritePost */lua/tokyonight/** nested colorscheme tokyonight]])
  end
  for _, sidebar in ipairs(config.sidebars) do
    if sidebar == "terminal" then
      vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
    else
      vim.cmd([[  autocmd FileType ]] .. sidebar .. [[ setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB]])
    end
  end
  vim.cmd([[augroup end]])
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function util.template(str, table)
  return (str:gsub("($%b{})", function(w)
    return table[w:sub(3, -2)] or w
  end))
end

function util.syntax(syntax)
  for group, colors in pairs(syntax) do
    util.highlight(group, colors)
  end
end

---@param colors ColorScheme
function util.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
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

---@param colors ColorScheme
function util.invert_colors(colors)
  if type(colors) == "string" then
    ---@diagnostic disable-next-line: return-type-mismatch
    return util.invert_color(colors)
  end
  for key, value in pairs(colors) do
    colors[key] = util.invert_colors(value)
  end
end

---@param hls Highlights
function util.invert_highlights(hls)
  for _, hl in pairs(hls) do
    if hl.fg then
      hl.fg = util.invert_color(hl.fg)
    end
    if hl.bg then
      hl.bg = util.invert_color(hl.bg)
    end
    if hl.sp then
      hl.sp = util.invert_color(hl.sp)
    end
  end
end

---@param theme Theme
function util.load(theme)
  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight"
  -- vim.api.nvim__set_hl_ns(ns)
  -- load base theme
  util.syntax(theme.base)
  util.syntax(theme.plugins)
  if theme.config.terminalColors then
    util.terminal(theme.colors)
  end

  util.autocmds(theme.config)

  vim.defer_fn(function()
    util.syntax(theme.defer)
  end, 100)
end

---@param config Config
---@param colors ColorScheme
function util.color_overrides(colors, config)
  if type(config.colors) == "table" then
    for key, value in pairs(config.colors) do
      if not colors[key] then
        error("Color " .. key .. " does not exist")
      end

      -- Patch: https://github.com/ful1e5/onedark.nvim/issues/6
      if type(colors[key]) == "table" then
        util.color_overrides(colors[key], { colors = value })
      else
        if value:lower() == "none" then
          -- set to none
          colors[key] = "NONE"
        elseif string.sub(value, 1, 1) == "#" then
          -- hex override
          colors[key] = value
        else
          -- another group
          if not colors[value] then
            error("Color " .. value .. " does not exist")
          end
          colors[key] = colors[value]
        end
      end
    end
  end
end

return util
