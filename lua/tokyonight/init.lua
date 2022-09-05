local util = require("tokyonight.util")
local theme = require("tokyonight.theme")

local M = {}

function M.load(opts)
  if opts then
    require("tokyonight.config").extend(opts)
  end
  util.load(theme.setup())
end

M.colorscheme = M.load

return M
