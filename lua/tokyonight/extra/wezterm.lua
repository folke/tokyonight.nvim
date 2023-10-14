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

ansi = ["${black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg_dark}"]
brights = ["${terminal_black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg}"]

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
