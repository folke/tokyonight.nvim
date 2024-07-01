local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniDepsChangeAdded   = { link = "diffAdded" },
    MiniDepsChangeRemoved = { link = "diffRemoved" },
    MiniDepsHint          = { link = "DiagnosticHint" },
    MiniDepsInfo          = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking   = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder   = { link = "Comment" },
    MiniDepsTitle         = { link = "Title" },
    MiniDepsTitleError    = { fg = c.black, bg = c.git.delete },
    MiniDepsTitleSame     = { link = "Comment" },
    MiniDepsTitleUpdate   = { fg = c.black, bg = c.git.add },
  }
end

return M
