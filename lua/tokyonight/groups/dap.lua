local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DapStoppedLine = { bg = Util.darken(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text
  }
end

return M
