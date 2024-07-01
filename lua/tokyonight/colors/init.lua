local Util = require("tokyonight.util")

local M = {}

---@param opts tokyonight.Config
function M.setup(opts)
  opts = opts or require("tokyonight.config").options
  ---@type Palette
  local palette = Util.mod("tokyonight.colors." .. opts.style)

  -- Color Palette
  ---@class ColorScheme: Palette
  local ret = palette

  ret.none = "NONE"
  Util.bg = ret.bg
  Util.day_brightness = opts.day_brightness

  ret.diff = {
    add = Util.darken(ret.green2, 0.15),
    delete = Util.darken(ret.red1, 0.15),
    change = Util.darken(ret.blue7, 0.15),
    text = ret.blue7,
  }

  ret.git.ignore = ret.dark3
  ret.black = Util.darken(ret.bg, 0.8, "#000000")
  ret.border_highlight = Util.darken(ret.blue1, 0.8)
  ret.border = ret.black

  -- Popups and statusline always get a dark background
  ret.bg_popup = ret.bg_dark
  ret.bg_statusline = ret.bg_dark

  -- Sidebar and Floats are configurable
  ret.bg_sidebar = opts.styles.sidebars == "transparent" and ret.none
    or opts.styles.sidebars == "dark" and ret.bg_dark
    or ret.bg

  ret.bg_float = opts.styles.floats == "transparent" and ret.none
    or opts.styles.floats == "dark" and ret.bg_dark
    or ret.bg

  ret.bg_visual = Util.darken(ret.blue0, 0.4)
  ret.bg_search = ret.blue0
  ret.fg_sidebar = ret.fg_dark
  ret.fg_float = ret.fg

  ret.error = ret.red1
  ret.todo = ret.blue
  ret.warning = ret.yellow
  ret.info = ret.blue2
  ret.hint = ret.teal

  ret.rainbow = { ret.blue, ret.yellow, ret.green, ret.teal, ret.magenta, ret.purple }

  return ret
end

return M
