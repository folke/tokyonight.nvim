local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.yellow },
    NoiceCmdlineIconLua            = { fg = c.blue1 },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue1 },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue1 },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  require("tokyonight.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
