local util = require("solarized-osaka.util")

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

ansi = ["${black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg_dark}"]
brights = ["${terminal_black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${fg}"]

[colors.tab_bar]
inactive_tab_edge = "${bg_dark}"
background = "#191b28"

[colors.tab_bar.active_tab]
fg_color = "${blue}"
bg_color = "${bg}"

[colors.tab_bar.inactive_tab]
bg_color = "${bg_dark}"
fg_color = "${dark3}"

[colors.tab_bar.inactive_tab_hover]
bg_color = "${bg_dark}"
fg_color = "${blue}"

[colors.tab_bar.new_tab_hover]
fg_color = "${bg_dark}"
bg_color = "${blue}"

[colors.tab_bar.new_tab]
fg_color = "${blue}"
bg_color = "#191b28"

[metadata]
aliases = []
author = "folke"
name = "${_style_name}"]],
    colors
  )
  return wezterm
end

return M
