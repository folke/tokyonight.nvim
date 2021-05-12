local util = require("tokyonight.util")
local theme = require("tokyonight.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
