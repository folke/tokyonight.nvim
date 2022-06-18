local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zsh = util.template(
    [[
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:${fg},bg:${bg},hl:${orange}
--color=fg+:${fg},bg+:${bg},hl+:${orange}
--color=info:${blue},prompt:${blue},pointer:${red1}
--color=marker:${green},spinner:${green},header:${green}'
]],
    colors
  )

  return zsh
end

return M
