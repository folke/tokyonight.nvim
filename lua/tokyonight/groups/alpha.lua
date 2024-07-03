local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.orange },
    AlphaHeader      = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter      = { fg = c.blue1 },
    AlphaButtons     = { fg = c.cyan },
  }
end

return M
