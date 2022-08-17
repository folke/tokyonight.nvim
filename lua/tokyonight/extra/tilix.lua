local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${black}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${magenta}",
        "${cyan}",
        "${fg_dark}",
        "${terminal_black}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${magenta}",
        "${cyan}",
        "${fg}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
