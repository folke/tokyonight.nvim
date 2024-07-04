local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, opts.style == "day" and c.blue or "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_gutter },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.orange },
    NeoTreeGitStaged           = { fg = c.green1 },
    NeoTreeGitUntracked        = { fg = c.magenta },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.blue, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive         = { fg = c.dark3, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.blue, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

return M
