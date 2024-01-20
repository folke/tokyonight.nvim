local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacritty = util.template(
    [=[
# TokyoNight Alacritty Colors
# Default colors
[colors.primary]
background = '${bg}'
foreground = '${fg}'

#[colors.cursor]
#cursor = '${fg}'
#text = '${bg}'

# Normal colors
[colors.normal]
black = '${black}'
red = '${red}'
green = '${green}'
yellow = '${yellow}'
blue = '${blue}'
magenta = '${magenta}'
cyan = '${cyan}'
white = '${fg_dark}'

# Bright colors
[colors.bright]
black = '${terminal_black}'
red = '${red}'
green = '${green}'
yellow = '${yellow}'
blue = '${blue}'
magenta = '${magenta}'
cyan = '${cyan}'
white = '${fg}'

# Indexed Colors
[[colors.indexed_colors]]
index = 16
color = '${orange}'

[[colors.indexed_colors]]
index = 17
color = '${red1}'

]=],
    colors
  )

  return alacritty
end

return M
