local util = require("dullahan.util")
local hslutil = require("dullahan.hsl")
local hsl = hslutil.hslToHex

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = hsl(0, 0, 4), -- #0a0a0a
  base03 = hsl(0, 0, 8), -- #141414
  base02 = hsl(0, 0, 11), -- #1c1c1c
  base01 = hsl(0, 0, 67), -- #ababab
  base00 = hsl(0, 0, 40), -- #666666
  base0 = hsl(0, 0, 95), -- #f2f2f2
  base1 = hsl(200, 100, 58), -- #29b8ff
  base2 = hsl(0, 0, 47), -- #787878
  base3 = hsl(0, 0, 78), -- #c7c7c7
  base4 = hsl(0, 0, 100), -- #ffffff
  yellow = hsl(245, 100, 68), -- #695cff
  yellow100 = hsl(245, 100, 78), -- #988fff
  yellow300 = hsl(245, 100, 73), -- #8175ff
  yellow500 = hsl(245, 100, 68), -- #695cff
  yellow700 = hsl(245, 100, 63), -- #5242ff
  yellow900 = hsl(246, 100, 58), -- #3b29ff
  orange = hsl(257, 100, 58), -- #6529ff
  orange100 = hsl(257, 100, 80), -- #b699ff
  orange300 = hsl(257, 100, 63), -- #7842ff
  orange500 = hsl(257, 100, 58), -- #6529ff
  orange700 = hsl(257, 100, 53), -- #530fff
  orange900 = hsl(257, 100, 48), -- #4500f5
  red = hsl(275, 100, 68), -- #bb5cff
  red100 = hsl(275, 100, 80), -- #d499ff
  red300 = hsl(275, 100, 72), -- #c370ff
  red500 = hsl(275, 100, 68), -- #bb5cff
  red700 = hsl(275, 100, 47), -- #8c00f0
  red900 = hsl(275, 100, 42), -- #7d00d6
  magenta = hsl(331, 100, 62), -- #ff3d9b
  magenta100 = hsl(331, 100, 80), -- #ff99ca
  magenta300 = hsl(331, 100, 73), -- #ff75b8
  magenta500 = hsl(331, 100, 62), -- #ff3d9b
  magenta700 = hsl(331, 100, 47), -- #f00074
  magenta900 = hsl(331, 100, 42), -- #d60068
  violet = hsl(215, 100, 62), -- #3d8eff
  violet100 = hsl(214, 100, 80), -- #99c3ff
  violet300 = hsl(215, 100, 70), -- #66a6ff
  violet500 = hsl(215, 100, 62), -- #3d8eff
  violet700 = hsl(215, 100, 50), -- #006aff
  violet900 = hsl(215, 100, 42), -- #0059d6
  blue = hsl(230, 100, 68), -- #5c77ff
  blue100 = hsl(230, 100, 82), -- #a3b3ff
  blue300 = hsl(230, 100, 76), -- #8599ff
  blue500 = hsl(230, 100, 68), -- #5c77ff
  blue700 = hsl(230, 100, 47), -- #0028f0
  blue900 = hsl(230, 100, 42), -- #0024d6
  cyan = hsl(200, 100, 62), -- #3dbeff
  cyan100 = hsl(201, 100, 80), -- #99ddff
  cyan300 = hsl(200, 100, 68), -- #5cc9ff
  cyan500 = hsl(200, 100, 62), -- #3dbeff
  cyan700 = hsl(207, 100, 53), -- #0fafff
  cyan900 = hsl(208, 100, 48), -- #00a3f5
  green = hsl(260, 100, 68), -- #925cff
  green100 = hsl(282, 100, 84), -- #e7adff
  green300 = hsl(268, 100, 76), -- #da85ff
  green500 = hsl(260, 100, 68), -- #925cff
  green700 = hsl(260, 100, 20), -- #470066
  green900 = hsl(260, 100, 10), -- #240033

  bg = hsl(0, 0, 11), -- #1c1c1c
  bg_highlight = hsl(0, 0, 8), -- #141414
  fg = hsl(0, 0, 95), -- #f2f2f2
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
