local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "background": "${bg}",
    "black": "${black}",
    "blue": "${blue}",
    "brightBlack": "${terminal_black}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${purple}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan": "${cyan}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "${_style_name}",
    "purple": "${magenta}",
    "red": "${red}",
    "selectionBackground": "${bg_visual}",
    "white": "${fg_dark}",
    "yellow": "${yellow}"
}
]],
    colors
  )

  return windows_terminal
end

return M
