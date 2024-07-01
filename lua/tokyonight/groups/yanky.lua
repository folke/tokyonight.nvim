local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    YankyPut    = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },
  }
end

return M
