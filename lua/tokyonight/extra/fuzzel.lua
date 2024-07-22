local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fuzzelColors = {}
  colors.bg_search = util.blend_bg(colors.fg_gutter, 0.8)
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fuzzelColors[k] = v:gsub("^#", "") .. "ff"
    end
  end

  local fuzzel = util.template(
    [[
[colors]
background=${bg_popup}
text=${fg}
match=${blue1}
selection=${bg_search}
selection-match=${blue1}
selection-text=${fg}
border=${border_highlight}
]],
    fuzzelColors
  )
  return fuzzel
end

return M
