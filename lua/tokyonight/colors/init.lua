local Util = require("tokyonight.util")

local M = {}

---@alias tokyonight.Config.colors tokyonight.Config|{transform?: boolean, light?: boolean}

---@param opts tokyonight.Config.colors
function M.setup(opts)
  opts = require("tokyonight.config").extend(opts)

  ---@cast opts tokyonight.Config.colors

  if opts.style == "day" or (opts.use_background and vim.o.background == "light") then
    opts.style = opts.light_style == "day" and "night" or opts.light_style
    opts.light = true
  end

  ---@type Palette
  local palette = vim.deepcopy(Util.mod("tokyonight.colors." .. opts.style))

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  colors.none = "NONE"
  Util.bg = colors.bg
  Util.day_brightness = opts.day_brightness

  colors.diff = {
    add = Util.darken(colors.green2, 0.15),
    delete = Util.darken(colors.red1, 0.15),
    change = Util.darken(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.darken(colors.blue1, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = Util.darken(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = { colors.blue, colors.yellow, colors.green, colors.teal, colors.magenta, colors.purple }

  if opts.light and opts.transform ~= false then
    Util.invert_colors(colors)
  end

  return colors, opts
end

return M
