local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniDiffOverAdd     = { link = "DiffAdd" },
    MiniDiffOverChange  = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete  = { link = "DiffDelete" },
    MiniDiffSignAdd     = { fg = c.git.add },
    MiniDiffSignChange  = { fg = c.git.change },
    MiniDiffSignDelete  = { fg = c.git.delete },
  }
end

return M
