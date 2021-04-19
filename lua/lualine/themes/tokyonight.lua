local colors = require("tokyonight.colors")

local tokyonight = {}

local c = { bg = colors.bg_statusline, fg = colors.fg_sidebar }

tokyonight.normal = {
  a = { bg = colors.blue, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = c,
}

tokyonight.insert = {
  a = { bg = colors.green3, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.green3 },
  c = c,
}

tokyonight.command = {
  a = { bg = colors.yellow, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
  c = c,
}

tokyonight.visual = {
  a = { bg = colors.magenta, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
  c = c,
}

tokyonight.replace = {
  a = { bg = colors.red, fg = colors.bg_dark },
  b = { bg = colors.fg_gutter, fg = colors.red },
  c = c,
}

tokyonight.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

return tokyonight
