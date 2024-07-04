local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.purple, bold = true },
    NeotestBorder       = { fg = c.blue },
    NeotestDir          = { fg = c.blue },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestFailed       = { fg = c.red },
    NeotestFile         = { fg = c.teal },
    NeotestFocused      = { fg = c.yellow },
    NeotestIndent       = { fg = c.fg_sidebar },
    NeotestMarked       = { fg = c.blue },
    NeotestNamespace    = { fg = c.green2 },
    NeotestPassed       = { fg = c.green },
    NeotestRunning      = { fg = c.yellow },
    NeotestSkipped      = { fg = c.blue },
    NeotestTarget       = { fg = c.blue },
    NeotestTest         = { fg = c.fg_sidebar },
    NeotestWinSelect    = { fg = c.blue },
  }
end

return M
