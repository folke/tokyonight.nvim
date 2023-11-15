local util = require("dullahan.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",
  bg_dark = "#000000",
  bg = "#1B1B1B",
  bg_highlight = "#1D1D1D",
  terminal_black = "#121212",
  fg = "#FFFFFF",
  fg_dark = "#F1F1F1",
  fg_gutter = "#2F2F2F",
  dark3 = "#444444",
  comment = "#525a62",
  dark5 = "#CCCCCC",
  blue0 = "#2B4FFF",
  blue = "#5C78FF",
  cyan = "#28B9FF",
  blue1 = "#5AC8FF",
  blue2 = "#0DB9D7",
  blue5 = "#89DDFF",
  blue6 = "#B4F9F8",
  blue7 = "#394B70",
  magenta = "#FF5EED",
  magenta2 = "#FF007C",
  purple = "#5EA2FF",
  orange = "#5EFFC3",
  yellow = "#685AFF",
  green = "#7129FF",
  green1 = "#905AFF",
  green2 = "#41A6B5",
  teal = "#4FD6BE",
  red = "#BA5AFF",
  red1 = "#A52AFF",
  git = { change = "#FFAE44", add = "#5AFF5D", delete = "#FF4444" },
  gitSigns = {
    add = "#58D354",
    change = "#D38454",
    delete = "#D35454",
  },
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

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red1, 0.15),
    change = util.darken(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = util.darken(colors.blue1, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red1, 0.45),
  }

  config.options.on_colors(colors)
  if opts.transform and config.is_white() then
    util.invert_colors(colors)
  end

  return colors
end

return M
