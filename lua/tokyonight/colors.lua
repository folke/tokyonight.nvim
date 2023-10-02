local util = require("tokyonight.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",

  base04 = "#00141A",
  base03 = "#002B36",
  base02 = "#073642",
  base01 = "#586E75",
  base00 = "#657B83",
  base0 = "#839496",
  base1 = "#93A1A1",
  base2 = "#EEE8D5",
  base3 = "#FDF6E3",
  base4 = "white",
  yellow = "#B58900",
  yellow100 = "#FFE999",
  yellow300 = "#FFC100",
  yellow500 = "#B58900",
  yellow700 = "#664D00",
  yellow900 = "#332700",
  orange = "#CB4B16",
  orange100 = "#FF9468",
  orange300 = "#F8520E",
  orange500 = "#CB4B16",
  orange700 = "#A13C11",
  orange900 = "#5C220A",
  red = "#DC322F",
  red100 = "#FF9D9B",
  red300 = "#F6524F",
  red500 = "#DC322F",
  red700 = "#B7211F",
  red900 = "#57100F",
  magenta = "#D33682",
  magenta100 = "#FF77B9",
  magenta300 = "#F255A1",
  magenta500 = "#D33682",
  magenta700 = "#B02669",
  magenta900 = "#541232",
  violet = "#6C71C4",
  violet100 = "#CCCFFF",
  violet300 = "#9CA0ED",
  violet500 = "#6C71C4",
  violet700 = "#494FB6",
  violet900 = "#25285B",
  blue = "#268BD2",
  blue100 = "#AADCFF",
  blue300 = "#49AEF5",
  blue500 = "#268BD2",
  blue700 = "#1B6497",
  blue900 = "#103956",
  cyan = "#2AA198",
  cyan100 = "#B9FFFA",
  cyan300 = "#29EEDF",
  cyan500 = "#2AA198",
  cyan700 = "#1A6265",
  cyan900 = "#103B3D",
  green = "#859900",
  green100 = "#D6FFAC",
  green300 = "#BAFB00",
  green500 = "#859900",
  green700 = "#596600",
  green900 = "#2C3300",

  bg = "#002B36",
  bg_highlight = "#073642",
  fg = "#839496",

  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  green1 = "#73daca",
  green2 = "#41a6b5",
}

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("tokyonight.config")

  -- local style = config.is_day() and config.options.light_style or config.options.style
  local style = "default"
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red500, 0.15),
    change = util.darken(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = util.darken(colors.blue1, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.base04
  colors.bg_statusline = colors.base04

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.base04
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.base04
    or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.base01 or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red500
  colors.warning = colors.yellow500
  colors.info = colors.blue500
  colors.hint = colors.cyan500

  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red500, 0.45),
  }

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
