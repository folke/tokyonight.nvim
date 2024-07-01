local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeDimText      = { fg = c.fg_gutter },
    NeoTreeGitModified  = { fg = c.orange },
    NeoTreeGitUntracked = { fg = c.magenta },
    NeoTreeGitStaged    = { fg = c.green1 },
    NeoTreeFileName     = { fg = c.fg_sidebar },
  }
end

return M
