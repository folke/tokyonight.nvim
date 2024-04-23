local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zellij = util.template(
    [=[
// Tokyonight Zellij Colors
// Add this file to your `CONFIG_DIR/themes` directory as described here:
// https://zellij.dev/documentation/themes#getting-zellij-to-pick-up-the-theme

themes {
    ${_name} {
        fg "${fg}"
        bg "${bg}"
        black "${black}"
        red "${red}"
        green "${green}"
        yellow "${yellow}"
        blue "${blue}"
        magenta "${magenta}"
        cyan "${cyan}"
        white "${fg_dark}"
        orange "${orange}"
    }
}

]=],
    colors
  )

  return zellij
end

return M
