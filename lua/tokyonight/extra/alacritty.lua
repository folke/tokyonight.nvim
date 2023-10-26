local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      alacrittyColors[k] = v:gsub("^#", "0x")
    end
  end

  local alacritty = util.template(
    [=[
# TokyoNight Alacritty Colors
# Default colors
[colors.primary]
background = '${bg}'
foreground = '${fg}'

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
    alacrittyColors
  )

  return alacritty
end

return M
