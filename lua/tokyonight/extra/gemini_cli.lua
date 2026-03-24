local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  return util.template([[
{
  "name": "${_style_name}",
  "type": "custom",
  "text": {
    "primary": "${fg}",
    "secondary": "${fg_dark}",
    "response": "${fg}"
  },
  "background": {
    "primary": "${bg}",
    "diff": {
      "added": "${diff.add}",
      "removed": "${diff.delete}"
    }
  },
  "border": {
    "default": "${bg_highlight}",
    "focused": "${blue}"
  },
  "ui": {
    "comment": "${comment}",
    "symbol": "${fg_dark}",
    "gradient": ["${blue}", "${magenta}", "${cyan}"]
  },
  "Background": "${bg}",
  "Foreground": "${fg}",
  "LightBlue": "${blue1}",
  "AccentBlue": "${magenta}",
  "AccentPurple": "${purple}",
  "AccentCyan": "${cyan}",
  "AccentGreen": "${orange}",
  "AccentYellow": "${green}",
  "AccentRed": "${red}",
  "DiffAdded": "${diff.add}",
  "DiffRemoved": "${diff.delete}",
  "Comment": "${comment}",
  "Gray": "${fg_dark}",
  "DarkGray": "${bg_dark}",
  "GradientColors": ["${blue}", "${magenta}", "${cyan}"]
}
]], colors)
end

return M