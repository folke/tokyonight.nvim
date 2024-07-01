local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader   = { fg = c.blue },
    DashboardCenter   = { fg = c.magenta },
    DashboardFooter   = { fg = c.blue1 },
    DashboardKey      = { fg = c.orange },
    DashboardDesc     = { fg = c.cyan },
    DashboardIcon     = { fg = c.cyan, bold = true },
  }
end

return M
