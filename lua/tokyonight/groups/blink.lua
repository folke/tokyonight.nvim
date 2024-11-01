local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc             = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder       = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText       = { fg = c.terminal_black },
    BlinkCmpKindCodeium     = { fg = c.teal, bg             = c.none },
    BlinkCmpKindCopilot     = { fg = c.teal, bg             = c.none },
    BlinkCmpKindDefault     = { fg = c.fg_dark, bg          = c.none },
    BlinkCmpKindSupermaven  = { fg = c.teal, bg             = c.none },
    BlinkCmpKindTabNine     = { fg = c.teal, bg             = c.none },
    BlinkCmpLabel           = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated = { fg = c.fg_gutter, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch      = { fg = c.blue1, bg            = c.none },
  }

  require("tokyonight.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
