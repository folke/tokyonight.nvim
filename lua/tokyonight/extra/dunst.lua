local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local dunst = util.template(
    [[
# TokyoNight colors for dunst
# For more configuration options see https://github.com/dunst-project/dunst/blob/master/dunstrc

[urgency_low]
    background = "${bg_dark}"
    foreground = "${fg}"
    frame_color = "${fg}"

[urgency_normal]
    background = "${bg}"
    foreground = "${fg}"
    frame_color = "${fg}"

[urgency_critical]
    background = "${bg_highlight}"
    foreground = "${error}"
    frame_color = "${error}"
]],
    colors
  )
  return dunst
end

return M
