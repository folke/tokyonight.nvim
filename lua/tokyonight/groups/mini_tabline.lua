local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/echasnovski/mini.tabline"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.fg, bg = c.fg_gutter },
    MiniTablineFill            = { bg = c.black },
    MiniTablineHidden          = { fg = c.dark5, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.fg_gutter },
    MiniTablineModifiedHidden  = { bg = c.bg_statusline, fg = Util.blend_bg(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection  = { bg = c.fg_gutter, fg = c.none },
    MiniTablineVisible         = { fg = c.fg, bg = c.bg_statusline },
  }
end

return M
