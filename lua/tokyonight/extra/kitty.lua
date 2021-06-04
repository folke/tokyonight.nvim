local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
  # TokyoNight colors for Kitty
  
  background ${bg}
  foreground ${fg}
  selection_background ${bg_visual}
  selection_foreground ${fg}
  url_color ${green1}
  cursor ${fg}
  
  # Tabs
  active_tab_background ${blue}
  active_tab_foreground ${bg_dark}
  inactive_tab_background ${bg_highlight}
  inactive_tab_foreground ${dark3}
  #tab_bar_background ${black}
  
  # normal
  color0 ${black}
  color1 ${red}
  color2 ${green}
  color3 ${yellow}
  color4 ${blue}
  color5 ${magenta}
  color6 ${cyan}
  color7 ${fg_dark}
  
  # bright
  color8 ${terminal_black}
  color9 ${red}
  color10 ${green}
  color11 ${yellow}
  color12 ${blue}
  color13 ${magenta}
  color14 ${cyan}
  color15 ${fg}
  
  # extended colors
  color16 ${orange}
  color17 ${red1}
  ]],
    colors
  )
  return kitty
end

return M
