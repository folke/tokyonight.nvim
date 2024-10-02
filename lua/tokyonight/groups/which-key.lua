local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal     = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.dark5 },
  }
end

return M
