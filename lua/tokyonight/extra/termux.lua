local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local termux = util.template(
    [[
# -----------------------------------------------------------------------------
# Theme: ${_style_name}
# Upstream: ${_upstream_url}
# -----------------------------------------------------------------------------

background: ${bg}
foreground: ${fg}

# Normal colors
color0:  ${terminal.black}
color1:  ${terminal.red}
color2:  ${terminal.green}
color3:  ${terminal.yellow}
color4:  ${terminal.blue}
color5:  ${terminal.magenta}
color6:  ${terminal.cyan}
color7:  ${terminal.white}

# Bright colors
color8:  ${terminal.black_bright}
color9:  ${terminal.red_bright}
color10: ${terminal.green_bright}
color11: ${terminal.yellow_bright}
color12: ${terminal.blue_bright}
color13: ${terminal.magenta_bright}
color14: ${terminal.cyan_bright}
color15: ${terminal.white_bright}

# Extended colors
color16: ${orange}
color17: ${red1}
]],
    colors
  )

  return termux
end

return M
