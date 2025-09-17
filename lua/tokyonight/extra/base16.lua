local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors, _, opts)
  colors.base16 = {
    variant = opts.style == "day" and "light" or "dark",
    base00 = colors.bg,
    base01 = colors.bg_highlight,
    base02 = colors.fg_gutter,
    base03 = colors.comment,
    base04 = colors.fg_dark,
    base05 = colors.fg,
    base06 = colors.blue5,
    base07 = colors.blue6,
    base08 = colors.red,
    base09 = colors.orange,
    base0A = colors.yellow,
    base0B = colors.green,
    base0C = colors.cyan,
    base0D = colors.blue,
    base0E = colors.purple,
    base0F = colors.magenta,
  }
  local base16 = util.template(
    [[
system: "base16"
name: "${_style_name}"
author: "folke"
variant: "${base16.variant}"
palette:
  base00: "${base16.base00}" # ----
  base01: "${base16.base01}" # ---
  base02: "${base16.base02}" # --
  base03: "${base16.base03}" # -
  base04: "${base16.base04}" # +
  base05: "${base16.base05}" # ++
  base06: "${base16.base06}" # +++
  base07: "${base16.base07}" # ++++
  base08: "${base16.base08}" # red
  base09: "${base16.base09}" # orange
  base0A: "${base16.base0A}" # yellow
  base0B: "${base16.base0B}" # green
  base0C: "${base16.base0C}" # cyan
  base0D: "${base16.base0D}" # blue
  base0E: "${base16.base0E}" # purple
  base0F: "${base16.base0F}" # magenta
]],
    colors
  )
  return base16
end

return M
