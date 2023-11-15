local colors = require("dullahan.colors").setup({ transform = true })
local config = require("dullahan.config").options

local dullahan = {}

dullahan.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg, fg = colors.black },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

dullahan.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

dullahan.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

dullahan.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

dullahan.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

dullahan.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

dullahan.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(dullahan) do
    mode.a.gui = "bold"
  end
end

return dullahan
