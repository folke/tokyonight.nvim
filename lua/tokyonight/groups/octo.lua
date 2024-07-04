local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.blue1, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.orange, bold = true },
    OctoIssueTitle            = { fg = c.purple, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.magenta, 0.1), fg = c.magenta },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.blue1 },

  }
end

return M
