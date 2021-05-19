---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local function opt(key, default)
  key = "tokyonight_" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  style = opt("style", "storm"),
  dayBrightness = opt("day_brightness", 0.3),
  transparent = opt("transparent", false),
  commentStyle = opt("italic_comments", true) and "italic" or "NONE",
  keywordStyle = opt("italic_keywords", true) and "italic" or "NONE",
  functionStyle = opt("italic_functions", false) and "italic" or "NONE",
  variableStyle = opt("italic_variables", false) and "italic" or "NONE",
  hideInactiveStatusline = opt("hide_inactive_statusline", false),
  terminalColors = opt("terminal_colors", true),
  sidebars = opt("sidebars", {}),
  colors = opt("colors", {}),
  dev = opt("dev", false),
  darkFloat = opt("dark_float", true),
  darkSidebar = opt("dark_sidebar", true),
  transform_colors = false,
}

if config.style == "day" then
  vim.o.background = "light"
end

return config
