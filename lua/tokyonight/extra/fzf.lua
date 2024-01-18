local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:${fg},bg:${bg},hl:${orange} \
--color=fg+:${fg},bg+:${bg_highlight},hl+:${orange} \
--color=info:${blue},prompt:${cyan},pointer:${cyan} \
--color=marker:${green},spinner:${green},header:${green}"
]]

return M
