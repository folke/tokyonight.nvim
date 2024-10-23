local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local extended_colors = vim.tbl_extend("force", colors, {
    red_bright = util.blend_fg(colors.red, 0.5),
    green_bright = util.blend_fg(colors.green, 0.5),
    yellow_bright = util.blend_fg(colors.yellow, 0.5),
    blue_bright = util.blend_fg(colors.blue, 0.5),
    magenta_bright = util.blend_fg(colors.magenta, 0.5),
    cyan_bright = util.blend_fg(colors.cyan, 0.5),
  })

  local termux = util.template(
    [[
# -----------------------------------------------------------------------------
# Theme: ${_style_name}
# Upstream: ${_upstream_url}
# -----------------------------------------------------------------------------

background: ${bg}
foreground: ${fg}

# Normal colors
color0:  ${black}
color1:  ${red}
color2:  ${green}
color3:  ${yellow}
color4:  ${blue}
color5:  ${magenta}
color6:  ${cyan}
color7:  ${fg_dark}

# Bright colors
color8:  ${terminal_black}
color9:  ${red_bright}
color10: ${green_bright}
color11: ${yellow_bright}
color12: ${blue_bright}
color13: ${magenta_bright}
color14: ${cyan_bright}
color15: ${fg}

# Extended colors
color16: ${orange}
color17: ${red1}
]],
    extended_colors
  )

  return termux
end

return M
