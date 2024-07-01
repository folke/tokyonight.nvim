local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeBlock = { bg = c.bg_dark },
    Headline  = { link = "Headline1" },
  }
  for i, color in ipairs(c.rainbow) do
    ret["Headline" .. i] = { bg = Util.darken(color, 0.05) }
  end
  return ret
end

return M
