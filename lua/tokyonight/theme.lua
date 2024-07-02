local Util = require("tokyonight.util")

local M = {}

---@param opts? tokyonight.Config
function M.setup(opts)
  opts = require("tokyonight.config").extend(opts)

  local Colors = require("tokyonight.colors")
  local colors
  colors, opts = Colors.setup(opts)
  opts.on_colors(colors)

  local Groups = require("tokyonight.groups")
  local groups = Groups.load(colors, opts)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight-" .. opts.style

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  -- vim.api.nvim_set_hl_ns(M.ns)
  if opts.terminal_colors then
    M.terminal(colors)
  end

  return colors, groups, opts
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
  vim.g.terminal_color_9 = Util.blend_fg(colors.red, 0.5)

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = Util.blend_fg(colors.green, 0.5)

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = Util.blend_fg(colors.yellow, 0.5)

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = Util.blend_fg(colors.blue, 0.5)

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_18 = Util.blend_fg(colors.magenta, 0.5)

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = Util.blend_fg(colors.cyan, 0.5)
end

return M
