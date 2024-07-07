local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader   = { fg = c.blue },
    DashboardFooter   = { fg = c.blue1 },
    -- Hyper theme
    Dashboardprojecttitle = { fg = c.cyan }
    Dashboardprojecttitleicon = { fg = c.orange }
    Dashboardprojecticon = { fg = c.yellow }
    Dashboardmrutitle = { fg = c.cyan }
    Dashboardmruicon = { fg = c.purple }
    Dashboardfiles = { fg = c.blue }
    Dashboardshortcuticon = { fg = c.magenta }
    -- Doome theme
    DashboardDesc     = { fg = c.cyan },
    DashboardKey      = { fg = c.orange },
    DashboardIcon     = { fg = c.cyan, bold = true },
    DashboardShortCut = { fg = c.cyan },
  }
end

return M
