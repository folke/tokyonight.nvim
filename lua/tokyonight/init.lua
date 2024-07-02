local config = require("tokyonight.config")

local M = {}
---@type {current?: string, light?: string, dark?: string}
M.styles = {}

---@param opts? tokyonight.Config
function M.load(opts)
  opts = require("tokyonight.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "day" and "light" or "dark"

  if opts.style == M.styles.current and bg ~= style_bg then
    if bg == "light" then
      opts.style = M.styles.light or "day"
    else
      opts.style = M.styles.dark or "moon"
    end
  elseif bg ~= style_bg then
    vim.o.background = style_bg
  end
  M.styles.current = opts.style
  M.styles[vim.o.background] = opts.style
  return require("tokyonight.theme").setup(opts)
end

M.setup = config.setup

return M
