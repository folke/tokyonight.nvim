local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaCursor        = { link = "IncSearch" },
    FzfLuaDirPart       = { fg = c.fg_dark },
    FzfLuaFilePart      = { link = "FzfLuaFzfNormal" },
    FzfLuaFzfCursorLine = { link = "Visual" },
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.magenta2 },
    FzfLuaFzfSeparator  = { fg = c.orange, bg = c.bg_float },
    FzfLuaHeaderBind    = { link = "@punctuation.special" },
    FzfLuaHeaderText    = { link = "Title" },
    FzfLuaNormal        = { fg = c.fg, bg = c.bg_float },
    FzfLuaPath          = { link = "Directory" },
    FzfLuaPreviewTitle  = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaTitle         = { fg = c.orange, bg = c.bg_float },
  }
end

return M
