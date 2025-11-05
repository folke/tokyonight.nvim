local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local ish = util.template(
    [[
{
  "name": "${_style_name}",
  "version": 1,
  "shared": {
    "backgroundColor": "${bg}",
    "colorPaletteOverrides": [
      "${terminal.black}",
      "${terminal.red}",
      "${terminal.green}",
      "${terminal.yellow}",
      "${terminal.blue}",
      "${terminal.magenta}",
      "${terminal.cyan}",
      "${terminal.white}",
      "${terminal.black_bright}",
      "${terminal.red_bright}",
      "${terminal.green_bright}",
      "${terminal.yellow_bright}",
      "${terminal.blue_bright}",
      "${terminal.magenta_bright}",
      "${terminal.cyan_bright}",
      "${terminal.white_bright}",
    ],
    "cursorColor": "${fg}",
    "foregroundColor": "${fg}"
  }
}

]],
    colors
  )
  return ish
end

return M
