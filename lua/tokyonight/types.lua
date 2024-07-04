---@class tokyonight.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias tokyonight.Highlights table<string,tokyonight.Highlight|string>

---@alias tokyonight.HighlightsFn fun(colors: ColorScheme, opts:tokyonight.Config):tokyonight.Highlights

---@class tokyonight.Cache
---@field groups tokyonight.Highlights
---@field inputs table
