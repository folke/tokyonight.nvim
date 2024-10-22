local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${bg_visual}"
selection_fg = "${fg}"
split = "${blue}"
compose_cursor = "${orange}"
scrollbar_thumb = "${bg_highlight}"

ansi = ["${terminal.black}", "${terminal.red}", "${terminal.green}", "${terminal.yellow}", "${terminal.blue}", "${terminal.magenta}", "${terminal.cyan}", "${terminal.white}"]
brights = ["${terminal.black_bright}", "${terminal.red_bright}", "${terminal.green_bright}", "${terminal.yellow_bright}", "${terminal.blue_bright}", "${terminal.magenta_bright}", "${terminal.cyan_bright}", "${terminal.white_bright}"]

[colors.tab_bar]
inactive_tab_edge = "${bg_dark}"
background = "${bg}"

[colors.tab_bar.active_tab]
fg_color = "${bg_dark}"
bg_color = "${blue}"

[colors.tab_bar.inactive_tab]
fg_color = "${dark3}"
bg_color = "${bg_highlight}"

[colors.tab_bar.inactive_tab_hover]
fg_color = "${blue}"
bg_color = "${bg_highlight}"
# intensity = "Bold"

[colors.tab_bar.new_tab_hover]
fg_color = "${blue}"
bg_color = "${bg}"
intensity = "Bold"

[colors.tab_bar.new_tab]
fg_color = "${blue}"
bg_color = "${bg}"

[metadata]
aliases = []
author = "folke"
name = "${_name}"]],
    colors
  )
  return wezterm
end

return M
