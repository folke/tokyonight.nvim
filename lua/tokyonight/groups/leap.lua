local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.magenta2, fg = c.fg, bold = true },
    LeapLabelPrimary   = { fg = c.magenta2, bold = true },
    LeapLabelSecondary = { fg = c.green1, bold = true },
    LeapBackdrop       = { fg = c.dark3 },
  }
end

return M
