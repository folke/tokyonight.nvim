local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  return util.template([[
# Theme: ${_style_name}
# Upstream: https://github.com/folke/tokyonight.nvim/tree/main/extras/atuin

[theme]
name = "${_name}"
parent = "default"

[colors]
AlertInfo = "${green1}"
AlertWarn = "${yellow}"
AlertError = "${red}"
Annotation = "${terminal_black}"
Base = "${fg}"
Guidance = "${orange}"
Important = "${blue}"
Title = "${magenta}"
Muted = "${dark3}"
]], colors)
end

return M
