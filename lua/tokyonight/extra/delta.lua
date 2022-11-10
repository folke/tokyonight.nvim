local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local delta = util.template(
    [[
[delta]
minus-style                   = syntax "${diff.delete}"
minus-non-emph-style          = syntax "${diff.delete}"
minus-emph-style              = "${black}" "${red1}"
minus-empty-line-marker-style = syntax "${diff.delete}"
plus-style                    = syntax "${diff.add}"
plus-non-emph-style           = syntax "${diff.add}"
plus-emph-style               = "${black}" "${green2}"
plus-empty-line-marker-style  = syntax "${diff.add}"
]],
    colors
  )
  return delta
end

return M
