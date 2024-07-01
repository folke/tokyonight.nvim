local config = require("tokyonight.config")

local M = {}

---@param opts? tokyonight.Config
function M.load(opts)
  opts = require("tokyonight.config").extend(opts)
  return require("tokyonight.theme").setup(opts)
end

M.setup = config.setup

return M
