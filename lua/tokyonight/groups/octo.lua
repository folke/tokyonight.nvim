local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.blue1, bold = true },
    OctoDetailsValue          = { link = "@variable.member" },
    OctoDirty                 = { fg = c.orange, bold = true },
    OctoIssueTitle            = { fg = c.purple, bold = true },
    OctoStateChangesRequested = { link = "DiagnosticVirtualTextWarn" },
    OctoStateClosed           = { link = "DiagnosticVirtualTextError" },
    OctoStateMerged           = { bg = Util.blend_bg(c.magenta, 0.1), fg = c.magenta },
    OctoStateOpen             = { link = "DiagnosticVirtualTextHint" },
    OctoStatePending          = { link = "DiagnosticVirtualTextWarn" },
    OctoStatusColumn          = { fg = c.blue1 },

  }
end

return M
