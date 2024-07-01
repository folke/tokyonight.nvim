local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniClueBorder              = { link = "FloatBorder" },
    MiniClueDescGroup           = { link = "DiagnosticFloatingWarn" },
    MiniClueDescSingle          = { link = "NormalFloat" },
    MiniClueNextKey             = { link = "DiagnosticFloatingHint" },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator           = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle               = { link = "FloatTitle" },
  }
end

return M
