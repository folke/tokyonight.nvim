local util = require("tokyonight.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name="${_name}"
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${bg_visual}
ColorSelection=${fg}

ColorPalette=${black};${red};${green};${yellow};${blue};${magenta};${cyan};${fg_dark};${terminal_black};${red};${green};${yellow};${blue};${magenta};${cyan};${fg}
]],
    colors
  )
  return xfceterm
end

return M
