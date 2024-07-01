local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.bg_visual },
  }
end

return M
