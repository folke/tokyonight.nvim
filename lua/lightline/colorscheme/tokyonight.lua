local config = require("tokyonight.config")
local colors = require("tokyonight.colors").setup(config)
local util = require("tokyonight.util")

local tokyonight = {}

tokyonight.normal = {
  left = {{ colors.black, colors.blue }, { colors.blue, colors.bg }},
  middle = {{ colors.blue, colors.fg_gutter }},
  right = {{ colors.fg_sidebar, colors.bg_statusline }, { colors.blue, colors.bg }},
  error = {{ colors.black, colors.error }},
  warning = {{ colors.black, colors.warning }},
}

tokyonight.insert = {
  left = {{ colors.black, colors.green }, { colors.blue, colors.bg }},
}

tokyonight.visual = {
  left = {{ colors.black, colors.magenta }, { colors.blue, colors.bg }},
}

tokyonight.replace = {
  left = {{ colors.black, colors.red }, { colors.blue, colors.bg }},
}

tokyonight.inactive = {
  left = {{ colors.blue, colors.bg_statusline }, {colors.dark3, colors.bg }},
  middle = {{ colors.fg_gutter, colors.bg_statusline }},
  right = {{ colors.fg_gutter, colors.bg_statusline }, {colors.dark3, colors.bg }},
}

if vim.o.background == "light" then
  for _, mode in pairs(tokyonight) do
    for _, section in pairs(mode) do
      for _, subsection in pairs(section) do
        subsection[1] = util.getColor(subsection[1])
        subsection[2] = util.getColor(subsection[2])
      end
    end
  end
end

return tokyonight
