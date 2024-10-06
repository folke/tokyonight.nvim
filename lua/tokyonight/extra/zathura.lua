local util = require("tokyonight.util")

local M = {}

--- @param pColors ColorScheme
function M.generate(pColors)
  local zathuraColors = {}
  for pColorsK, pColorsV in pairs(pColors) do
    -- Add any color names we need to convert from hex to decimal
    local decimalColors = { "yellow", "green" }
    -- Return true if a table contains a value
    ---@param tab table Table to search in
    ---@param val any Value to locate in table
    local function contains(tab, val)
      for _, value in ipairs(tab) do
        if value == val then
          return true
        end
      end
      return false
    end
    if contains(decimalColors, pColorsK) then
      local colorNames = { "R", "G", "B" }
      -- Start at 2 to skip #
      local hexIndex = 2
      -- Inserts values into table in form of {color}Decimal{R,G,B}
      for i = 1, #colorNames do
        local zColorsK = pColorsK .. "Decimal" .. colorNames[i]
        local zColorsV = tonumber(pColorsV:sub(hexIndex, hexIndex + 1), 16)
        zathuraColors[zColorsK] = zColorsV
        hexIndex = hexIndex + 2
      end
    end
    -- Add other colors into table normally
    zathuraColors[pColorsK] = pColorsV
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
