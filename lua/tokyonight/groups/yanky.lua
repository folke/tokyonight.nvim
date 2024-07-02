local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    YankyPut    = "IncSearch",
    YankyYanked = "IncSearch",
  }
end

return M
