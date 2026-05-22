local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [=[
{
  "_note": "${_style_name}",
  "theme": {
    "name": "${_name}",
    "dark": true,
    "primary": "${fg}",
    "secondary": "${fg_dark}",
    "accent": "${blue}",
    "warning": "${warning}",
    "error": "${error}",
    "success": "${green}",
    "foreground": "${fg}",
    "background": "${bg}",
    "surface": "${bg_dark}",
    "panel": "${bg_highlight}",
    "variables": {
      "border": "${blue0}",
      "input-selection-background": "${bg_visual}",
      "mode-normal-color": "${yellow}",
      "mode-insert-color": "${green}"
    }
  }
}
]=]

return M

