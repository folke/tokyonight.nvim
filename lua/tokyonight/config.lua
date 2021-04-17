---@class Config
local config
config = { style = "storm" }

if vim.g.tokyonight_style == "night" then config.style = "night" end

return config
