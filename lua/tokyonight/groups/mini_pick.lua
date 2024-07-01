local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniPickBorder        = { link = "FloatBorder" },
    MiniPickBorderBusy    = { link = "DiagnosticFloatingWarn" },
    MiniPickBorderText    = { fg = c.hint, bg = c.bg_float },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile      = { link = "MiniPickNormal" },
    MiniPickHeader        = { link = "DiagnosticFloatingHint" },
    MiniPickMatchCurrent  = { link = "CursorLine" },
    MiniPickMatchMarked   = { link = "Visual" },
    MiniPickMatchRanges   = { link = "DiagnosticFloatingHint" },
    MiniPickNormal        = { link = "NormalFloat" },
    MiniPickPreviewLine   = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt        = { fg = c.info, bg = c.bg_float },
  }
end

return M
