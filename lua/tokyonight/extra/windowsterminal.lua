local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local winterm = util.template(
[[
{
    // upstream: ${_upstrean_url}

    "name" : "${_style_name}",

    "cursorColor": "${fg}",
    "selectionBackground": "${bg_visual}",

    "background" : "${bg}",
    "foreground" : "${fg}",

    "black" : "${black}",
    "blue" : "${blue}",
    "cyan" : "${cyan}",
    "green" : "${green}",
    "purple" : "${magenta}",
    "red" : "${red}",
    "white" : "${fg}",
    "yellow" : "${yellow}",
    "brightBlack" : "${terminal_black}",
    "brightBlue" : "${blue}",
    "brightCyan" : "${cyan}",
    "brightGreen" : "${green}",
    "brightPurple" : "${magenta}",
    "brightRed" : "${red}",
    "brightWhite" : "${fg}",
    "brightYellow" : "${yellow}"
}
]], colors)
  return winterm
end

return M
