local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    BufferAlternate       = { bg = c.fg_gutter, fg = c.fg },
    BufferAlternateERROR  = { bg = c.fg_gutter, fg = c.error },
    BufferAlternateHINT   = { bg = c.fg_gutter, fg = c.hint },
    BufferAlternateINFO   = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateIndex  = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateMod    = { bg = c.fg_gutter, fg = c.warning },
    BufferAlternateSign   = { bg = c.fg_gutter, fg = c.info },
    BufferAlternateTarget = { bg = c.fg_gutter, fg = c.red },
    BufferAlternateWARN   = { bg = c.fg_gutter, fg = c.warning },
    BufferCurrent         = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR    = { bg = c.bg, fg = c.error },
    BufferCurrentHINT     = { bg = c.bg, fg = c.hint },
    BufferCurrentINFO     = { bg = c.bg, fg = c.info },
    BufferCurrentIndex    = { bg = c.bg, fg = c.info },
    BufferCurrentMod      = { bg = c.bg, fg = c.warning },
    BufferCurrentSign     = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget   = { bg = c.bg, fg = c.red },
    BufferCurrentWARN     = { bg = c.bg, fg = c.warning },
    BufferInactive        = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.dark5, 0.8) },
    BufferInactiveERROR   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.error, 0.8) },
    BufferInactiveHINT    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.hint, 0.8) },
    BufferInactiveINFO    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.info, 0.8) },
    BufferInactiveIndex   = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.dark5 },
    BufferInactiveMod     = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferInactiveSign    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget  = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = c.red },
    BufferInactiveWARN    = { bg = Util.blend_bg(c.bg_highlight, 0.4), fg = Util.blend_bg(c.warning, 0.8) },
    BufferOffset          = { bg = c.bg_statusline, fg = c.dark5 },
    BufferTabpageFill     = { bg = Util.blend_bg(c.bg_highlight, 0.8), fg = c.dark5 },
    BufferTabpages        = { bg = c.bg_statusline, fg = c.none },
    BufferVisible         = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR    = { bg = c.bg_statusline, fg = c.error },
    BufferVisibleHINT     = { bg = c.bg_statusline, fg = c.hint },
    BufferVisibleINFO     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleIndex    = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod      = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget   = { bg = c.bg_statusline, fg = c.red },
    BufferVisibleWARN     = { bg = c.bg_statusline, fg = c.warning },
  }
end

return M
