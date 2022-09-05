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

---@param options Config|nil
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options Config|nil
function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

M.setup()

return M
