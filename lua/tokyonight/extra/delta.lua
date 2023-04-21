local util = require("tokyonight.util")
local config = require("tokyonight.config")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red1, 0.45),
  }
  if config.is_day() then
    colors.delta = {
      add = util.lighten(colors.green2, 0.45),
      delete = util.lighten(colors.red1, 0.45),
    }
  end

  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${diff.delete}"
  minus-non-emph-style          = syntax "${diff.delete}"
  minus-emph-style              = syntax "${delta.delete}"
  minus-empty-line-marker-style = syntax "${diff.delete}"
  line-numbers-minus-style      = "${gitSigns.delete}"
  plus-style                    = syntax "${diff.add}"
  plus-non-emph-style           = syntax "${diff.add}"
  plus-emph-style               = syntax "${delta.add}"
  plus-empty-line-marker-style  = syntax "${diff.add}"
  line-numbers-plus-style       = "${gitSigns.add}"
  line-numbers-zero-style       = "${fg_gutter}"
]],
    colors
  )
  return delta
end

return M
