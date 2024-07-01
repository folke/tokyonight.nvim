local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniFilesBorder         = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
    MiniFilesCursorLine     = { link = "CursorLine" },
    MiniFilesDirectory      = { link = "Directory" },
    MiniFilesFile           = { fg = c.fg_float },
    MiniFilesNormal         = { link = "NormalFloat" },
    MiniFilesTitle          = { link = "FloatTitle" },
    MiniFilesTitleFocused   = { fg = c.border_highlight, bg = c.bg_float, bold = true },
  }
end

return M
