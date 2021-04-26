local util = require("tokyonight.util")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or require("tokyonight.config")

  -- Color Palette
  ---@class ColorScheme
  local colors = {}

  colors = {
    none = "NONE",
    bg_dark = "#1f2335",
    bg = "#24283b",
    bg_highlight = "#292e42",
    terminal_black = "#414868",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#565f89",
    dark5 = "#737aa2",
    blue0 = "#3d59a1",
    blue = "#7aa2f7",
    cyan = "#7dcfff",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",
    magenta = "#bb9af7",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    yellow = "#e0af68",
    green = "#9ece6a",
    green1 = "#73daca",
    teal = "#1abc9c",
    red = "#f7768e",
    red1 = "#db4b4b",
    diff = { change = "#394b70", add = "#164846", delete = "#823c41" },
    git = { change = "#6183bb", add = "#449dab", delete = "#f7768e" },
  }
  if config.style == "night" or vim.o.background == "light" then colors.bg = "#1a1b26" end

  colors.gitSigns = {
    add = util.brighten(colors.diff.add, .2),
    change = util.brighten(colors.diff.change, .2),
    delete = util.brighten(colors.diff.delete, .2),
  }

  util.bg = colors.bg
  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = colors.blue0
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.darkSidebar and colors.bg_dark or colors.bg
  colors.bg_float = config.darkFloat and colors.bg_dark or colors.bg

  colors.bg_visual = util.darken(colors.blue0, 0.7)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark

  colors.error = colors.red1
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  util.color_overrides(colors, config)

  return colors
end

return M

