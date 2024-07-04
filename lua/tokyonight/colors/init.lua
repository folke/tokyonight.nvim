local Util = require("tokyonight.util")

local M = {}

---@param opts? tokyonight.Config
function M.setup(opts)
  opts = require("tokyonight.config").extend(opts)

  Util.day_brightness = opts.day_brightness

  ---@type Palette
  local palette = vim.deepcopy(Util.mod("tokyonight.colors." .. opts.style))
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.15),
    delete = Util.blend_bg(colors.red1, 0.15),
    change = Util.blend_bg(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.blue1, 0.8)
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

  colors.bg_visual = Util.blend_bg(colors.blue0, 0.4)
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.rainbow = { colors.blue, colors.yellow, colors.green, colors.teal, colors.magenta, colors.purple }

  opts.on_colors(colors)

  return colors, opts
end

return M
