local Util = require("tokyonight.util")

local M = {}

---@param opts? tokyonight.Config
function M.setup(opts)
  opts = opts or require("tokyonight.config").options

  local light = false
  if opts.style == "day" or (opts.use_background and vim.o.background == "light") then
    light = true
    opts.style = opts.light_style == "day" and "night" or opts.light_style
  end

  local Colors = require("tokyonight.colors")
  local colors = Colors.setup(opts)
  opts.on_colors(colors)

  local Groups = require("tokyonight.groups")
  local groups = Groups.load(colors, opts)

  if light then
    Util.invert_highlights(groups)
    Util.invert_colors(colors)
  end

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight-" .. (light and "day" or opts.style)

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end

  -- vim.api.nvim_set_hl_ns(M.ns)
  if opts.terminal_colors then
    M.terminal(colors)
  end

  return colors, groups
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.terminal_black

  -- light
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_15 = colors.fg

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

return M
