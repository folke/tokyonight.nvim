local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
