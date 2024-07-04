local M = {}

M.url = "https://github.com/airblade/vim-gitgutter"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GitGutterAdd          = { fg = c.git.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange       = { fg = c.git.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete       = { fg = c.git.delete }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr    = { fg = c.git.add },
    GitGutterChangeLineNr = { fg = c.git.change },
    GitGutterDeleteLineNr = { fg = c.git.delete },
  }
end

return M
