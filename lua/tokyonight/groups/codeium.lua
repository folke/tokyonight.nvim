local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.terminal_black },
  }
  return ret
end

return M
