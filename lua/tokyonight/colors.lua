local util = require("tokyonight.util")
local config = require("tokyonight.config")

-- Color Palette
---@class ColorScheme
local colors = {
  none = "NONE",
  fg = "#a9b1d6",
  bg = "#24283b",
  -- bg = "#99283b",
  sidebar_fg = "#7982a9",
  sidebar_bg = "#1f2335",
  light0 = "#c0caf5",
  light1 = "#394b70",
  black = "#1f2335",
  dark1 = "#292e42",
  dark2 = "#3b4261",
  dark3 = "#545c7e",
  dark4 = "#565f89",
  dark5 = "#737aa2",
  blue0 = "#3d59a1",
  blue = "#7aa2f7",
  cyan = "#7dcfff",
  blue1 = "#2ac3de",
  blue4 = "#b4f9f8",
  blue5 = "#89ddff",
  blue6 = "#0da0ba",
  magenta = "#bb9af7",
  violet = "#9d7cd8",
  orange = "#ff9e64",
  yellow = "#e0af68",
  green3 = "#9ece6a",
  green = "#73daca",
  green2 = "#164846",
  teal = "#10B981",
  red = "#f7768e",
  red1 = "#db4b4b",
  red2 = "#914c54",
  red3 = "#bb616b",
  red4 = "#823c41",
  grey = "#cfc9c2",
}

colors.diff = { add = colors.green2, delete = colors.red4, change = colors.light1 }

if config.style == "night" then colors.bg = "#1a1b26" end

local zephyr = {
  base0 = "#1B2229",
  base1 = "#1c1f24",
  base2 = "#202328",
  base3 = "#23272e",
  base4 = "#3f444a",
  base5 = "#5B6268",
  base6 = "#73797e",
  base7 = "#9ca0a4",
  base8 = "#b1b1b1",

  bg = "#282a36",
  bg1 = "#504945",
  bg_popup = "#3E4556",
  bg_highlight = "#2E323C",
  bg_visual = "#b3deef",

  fg = "#bbc2cf",
  fg_alt = "#5B6268",

  red = "#e95678",

  redwine = "#d16d9e",
  orange = "#D98E48",
  yellow = "#f0c674",

  light_green = "#abcf84",
  green = "#afd700",
  dark_green = "#98be65",

  cyan = "#36d0e0",
  blue = "#61afef",
  violet = "#b294bb",
  magenta = "#c678dd",
  teal = "#1abc9c",
  grey = "#928374",
  brown = "#c78665",
  black = "#000000",

  bracket = "#80A0C2",
  currsor_bg = "#4f5b66",
  none = "NONE",
}

return colors

