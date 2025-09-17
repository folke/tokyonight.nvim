local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors, _, opts)
  colors.base24 = {
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
    base10 = colors.bg_dark,
    base11 = colors.bg_dark1,
    base12 = colors.terminal.red_bright,
    base13 = colors.terminal.yellow_bright,
    base14 = colors.terminal.green_bright,
    base15 = colors.terminal.cyan_bright,
    base16 = colors.terminal.blue_bright,
    base17 = colors.terminal.magenta_bright,
  }
  local base16 = util.template(
    [[
system: "base16"
name: "${_style_name}"
author: "folke"
variant: "${base24.variant}"
palette:
  base00: "${base24.base00}" # ----
  base01: "${base24.base01}" # ---
  base02: "${base24.base02}" # --
  base03: "${base24.base03}" # -
  base04: "${base24.base04}" # +
  base05: "${base24.base05}" # ++
  base06: "${base24.base06}" # +++
  base07: "${base24.base07}" # ++++
  base08: "${base24.base08}" # red
  base09: "${base24.base09}" # orange
  base0A: "${base24.base0A}" # yellow
  base0B: "${base24.base0B}" # green
  base0C: "${base24.base0C}" # cyan
  base0D: "${base24.base0D}" # blue
  base0E: "${base24.base0E}" # purple
  base0F: "${base24.base0F}" # magenta
  base10: "${base24.base10}" # darker background
  base11: "${base24.base11}" # darkest background
  base12: "${base24.base12}" # bright red
  base13: "${base24.base13}" # bright yellow
  base14: "${base24.base14}" # bright green
  base15: "${base24.base15}" # bright cyan
  base16: "${base24.base16}" # bright blue
  base17: "${base24.base17}" # bright purple
]],
    colors
  )
  return base16
end

return M
