-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local M = {}

---@class Config
local defaults = {
  style = "storm",
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "italic",
    variables = "NONE",
  },
  colors = {},
  darkFloat = true,
  darkSidebar = true,
  dayBrightness = 0.3,
  dev = false,
  hideInactiveStatusline = false,
  lualineBold = false,
  sidebars = {},
  terminalColors = true,
  transparent = false,
  transparentSidebar = false,
}

---@type Config
M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
