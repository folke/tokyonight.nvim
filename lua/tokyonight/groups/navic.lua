local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    NavicSeparator = { fg = c.fg, bg = c.none },
    NavicText      = { fg = c.fg, bg = c.none },
  }
  require("tokyonight.groups.kinds").kinds(ret, "NavicIcons%s")
  return ret
end

return M
