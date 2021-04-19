---@class Config
local config

local function opt(key, default)
  key = "tokyonight_" .. key
  if vim.g[key] == nil then return default end
  if vim.g[key] == 0 then return false end
  return vim.g[key]
end

config = {
  style = opt("style", "storm"),
  transparent = opt("transparent", false),
  commentStyle = opt("italic_comments", true) and "italic" or "NONE",
  keywordStyle = opt("italic_keywords", true) and "italic" or "NONE",
  functionStyle = opt("italic_functions", false) and "italic" or "NONE",
  hideInactiveStatusline = opt("hide_inactive_statusline", false),
}

return config
