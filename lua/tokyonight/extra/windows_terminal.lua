local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
{
    "name": "${_style_name}",
    "background": "${bg_dark}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${black}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${magenta}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan": "${cyan}",
    "foreground": "${fg}",
    "green": "${green}",
    "purple": "${magenta}",
    "red": "${red}",
    "selectionBackground": "${bg_visual}",
    "white": "${fg}",
    "yellow": "${yellow}"
}

  ]],
    colors
  )
  return windows_terminal
end

return M
