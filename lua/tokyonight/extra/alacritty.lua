local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacritty = util.template(
    [=[
# -----------------------------------------------------------------------------
# TokyoNight Alacritty Colors
# Theme: ${_style_name}
# Upstream: ${_upstream_url}
# -----------------------------------------------------------------------------

# Default colors
[colors.primary]
background = '${bg}'
foreground = '${fg}'

# Normal colors
[colors.normal]
black = '${terminal.black}'
red = '${terminal.red}'
green = '${terminal.green}'
yellow = '${terminal.yellow}'
blue = '${terminal.blue}'
magenta = '${terminal.magenta}'
cyan = '${terminal.cyan}'
white = '${terminal.white}'

# Bright colors
[colors.bright]
black = '${terminal.black_bright}'
red = '${terminal.red_bright}'
green = '${terminal.green_bright}'
yellow = '${terminal.yellow_bright}'
blue = '${terminal.blue_bright}'
magenta = '${terminal.magenta_bright}'
cyan = '${terminal.cyan_bright}'
white = '${terminal.white_bright}'
]=],
    colors
  )

  return alacritty
end

return M
