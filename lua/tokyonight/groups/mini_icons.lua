local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsAzure  = { fg = c.info },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsCyan   = { fg = c.hint },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsRed    = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },
  }
end

return M
