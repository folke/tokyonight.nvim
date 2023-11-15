local util = require("dullahan.util")
local hslutil = require("dullahan.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(0, 0, 5),
  base03 = hsl(0, 0, 11),
  base02 = hsl(0, 0, 7),
  base01 = hsl(0, 0, 67),
  base00 = hsl(0, 0, 40),
  base0 = hsl(0, 0, 95),
  base1 = hsl(200, 100, 58),
  base2 = hsl(0, 0, 47),
  base3 = hsl(0, 0, 95),
  base4 = hsl(0, 0, 100),
  yellow = hsl(245, 100, 68),
  yellow100 = hsl(245, 100, 78),
  yellow300 = hsl(245, 100, 73),
  yellow500 = hsl(245, 100, 68),
  yellow700 = hsl(245, 100, 63),
  yellow900 = hsl(246, 100, 58),
  orange = hsl(257, 100, 44),
  orange100 = hsl(257, 100, 70),
  orange300 = hsl(257, 94, 51),
  orange500 = hsl(257, 100, 44),
  orange700 = hsl(257, 81, 35),
  orange900 = hsl(257, 80, 20),
  red = hsl(275, 71, 52),
  red100 = hsl(275, 100, 80),
  red300 = hsl(275, 90, 64),
  red500 = hsl(275, 71, 52),
  red700 = hsl(275, 71, 42),
  red900 = hsl(275, 71, 20),
  magenta = hsl(331, 64, 52),
  magenta100 = hsl(331, 100, 73),
  magenta300 = hsl(331, 86, 64),
  magenta500 = hsl(331, 64, 52),
  magenta700 = hsl(331, 64, 42),
  magenta900 = hsl(331, 65, 20),
  violet = hsl(215, 100, 60),
  violet100 = hsl(214, 100, 90),
  violet300 = hsl(215, 69, 77),
  violet500 = hsl(215, 100, 60),
  violet700 = hsl(215, 100, 50),
  violet900 = hsl(215, 50, 25),
  blue = hsl(230, 69, 49),
  blue100 = hsl(230, 100, 83),
  blue300 = hsl(230, 90, 62),
  blue500 = hsl(230, 69, 49),
  blue700 = hsl(230, 70, 35),
  blue900 = hsl(230, 69, 20),
  cyan = hsl(200, 100, 55),
  cyan100 = hsl(201, 100, 86),
  cyan300 = hsl(200, 85, 55),
  cyan500 = hsl(200, 100, 40),
  cyan700 = hsl(207, 59, 25),
  cyan900 = hsl(208, 58, 15),
  green = hsl(260, 100, 30),
  green100 = hsl(282, 100, 84),
  green300 = hsl(268, 100, 49),
  green500 = hsl(260, 100, 30),
  green700 = hsl(260, 100, 20),
  green900 = hsl(260, 100, 10),

  bg = hsl(0, 0, 11),
  bg_highlight = hsl(0, 0, 7),
  fg = hsl(0, 0, 95),
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("dullahan.config")

  local style = config.is_white() and config.options.light_style or config.options.style
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.base04
  colors.bg_statusline = colors.base03

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.base04
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.base04
    or colors.bg

  -- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red500
  colors.warning = colors.yellow500
  colors.info = colors.blue500
  colors.hint = colors.cyan500

  config.options.on_colors(colors)
  if opts.transform and config.is_white() then
    util.invert_colors(colors)
  end

  return colors
end

return M
