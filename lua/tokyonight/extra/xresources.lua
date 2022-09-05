local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = util.template(
    [[
! TokyoNight colors for Xresources

*background: ${bg}
*foreground: ${fg}

*color0: ${black}
*color1: ${red}
*color2: ${green}
*color3: ${yellow}
*color4: ${blue}
*color5: ${magenta}
*color6: ${cyan}
*color7: ${fg_dark}

*color8: ${terminal_black}
*color9: ${red}
*color10: ${green}
*color11: ${yellow}
*color12: ${blue}
*color13: ${magenta}
*color14: ${cyan}
*color15: ${fg}
 
]],
    colors
  )
  return xr
end

return M
