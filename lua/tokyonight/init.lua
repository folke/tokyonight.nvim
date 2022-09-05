local util = require("tokyonight.util")
local theme = require("tokyonight.theme")
local config = require("tokyonight.config")

local M = {}

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("tokyonight.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
