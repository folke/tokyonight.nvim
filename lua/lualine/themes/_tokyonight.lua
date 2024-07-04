local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("tokyonight.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.blue, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.blue },
    c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
  }

  hl.insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.green },
  }

  hl.command = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.yellow },
  }

  hl.visual = {
    a = { bg = colors.magenta, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.magenta },
  }

  hl.replace = {
    a = { bg = colors.red, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.red },
  }

  hl.terminal = {
    a = { bg = colors.green1, fg = colors.black },
    b = { bg = colors.fg_gutter, fg = colors.green1 },
  }

  hl.inactive = {
    a = { bg = colors.bg_statusline, fg = colors.blue },
    b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
    c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
