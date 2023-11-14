local colors = require("dullahan.colors").setup({ transform = true })

local dullahan = {}

dullahan.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

dullahan.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

dullahan.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.bg } },
}

dullahan.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

dullahan.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
}

dullahan.tabline = {
  left = { { colors.dark3, colors.bg_highlight }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
  tabsel = { { colors.blue, colors.fg_gutter }, { colors.dark3, colors.bg } },
}

return dullahan
