local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${bg_visual}"
selection_fg = "${fg}"

ansi = ["${black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg_dark}"]
brights = ["${terminal_black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg}"]
  ]],
    colors
  )
  return kitty
end

return M
