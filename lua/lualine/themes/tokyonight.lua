local colors = require("tokyonight.colors").setup()

local tokyonight = {}

local c = { bg = colors.bg_statusline, fg = colors.fg_sidebar }

tokyonight.normal = {
  a = { bg = colors.blue, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = c,
}

tokyonight.insert = {
  a = { bg = colors.green, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

tokyonight.command = {
  a = { bg = colors.yellow, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

tokyonight.visual = {
  a = { bg = colors.magenta, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

tokyonight.replace = {
  a = { bg = colors.red, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

tokyonight.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

return tokyonight
