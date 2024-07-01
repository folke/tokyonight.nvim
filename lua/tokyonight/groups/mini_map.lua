local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniMapNormal      = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine  = { link = "Title" },
    MiniMapSymbolView  = { link = "Delimiter" },
  }
end

return M
