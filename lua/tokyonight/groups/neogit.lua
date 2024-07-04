local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.magenta },
    NeogitRemote               = { fg = c.purple },
    NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight  = { bg = c.fg_gutter, fg = c.blue },
    NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
