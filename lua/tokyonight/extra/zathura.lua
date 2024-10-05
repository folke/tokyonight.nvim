local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zathuraColors = {}
  for k, v in pairs(colors) do
    if k == "yellow" or k == "green" then
      zathuraColors[k .. "DecimalR"] = tostring(tonumber(string.sub(v, 2, 3), 16))
      zathuraColors[k .. "DecimalG"] = tostring(tonumber(string.sub(v, 4, 5), 16))
      zathuraColors[k .. "DecimalB"] = tostring(tonumber(string.sub(v, 5, 7), 16))
    end
    zathuraColors[k] = v
  end
  local zathura = util.template(
    [[
# Tokyonight color theme for Zathura
# Swaps Foreground for Background to get a light version if the user prefers
#
# Tokyonight color theme
#
set notification-error-bg "${red}"
set notification-error-fg "${fg}"
set notification-warning-bg "${yellow}"
set notification-warning-fg "${terminal_black}"
set notification-bg "${bg}"
set notification-fg "${fg}"
set completion-bg "${bg}"
set completion-fg "${fg_dark}"
set completion-group-bg "${bg}"
set completion-group-fg "${fg_dark}"
set completion-highlight-bg "${terminal_black}"
set completion-highlight-fg "${fg}"
set index-bg "${bg}"
set index-fg "${fg}"
set index-active-bg "${terminal_black}"
set index-active-fg "${fg}"
set inputbar-bg "${bg}"
set inputbar-fg "${fg}"
set statusbar-bg "${bg}"
set statusbar-fg "${fg}"
set highlight-color "rgba(${yellowDecimalR}, ${yellowDecimalG}, ${yellowDecimalB}, 0.5)"
set highlight-active-color "rgba(${greenDecimalR}, ${greenDecimalG}, ${greenDecimalB}, 0.5)"
set default-bg "${bg}"
set default-fg "${fg}"
set render-loading true
set render-loading-fg "${bg}"
set render-loading-bg "${fg}"
#
# Recolor mode settings
# <C-r> to switch modes
#
set recolor-lightcolor "${bg}"
set recolor-darkcolor "${fg}"
]],
    zathuraColors
  )
  return zathura
end

return M
