local util = {}

local function luma(hex_str, lum)
  -- Hex to RGB
  -- normalise
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  lum = lum or 0;

  local lumac = function(c)
    c = tonumber(c, 16)
    return math.floor(math.min(math.max(0, c + (c * lum / 100)), 255) + .5)
  end

  return string.format("#%02X%02X%02X", lumac(r), lumac(g), lumac(b))
end

function util.darken(hex, amount) return luma(hex, -math.abs(amount)) end

function util.lighten(hex, amount) return luma(hex, math.abs(amount)) end

function util.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function util.syntax(syntax) for group, colors in pairs(syntax) do util.highlight(group, colors) end end

---@param colors ColorScheme
function util.terminal(colors)
  vim.g.terminal_color_0 = colors.bg
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.orange
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.dark5
  vim.g.terminal_color_8 = colors.dark2
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.orange
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.fg
end

---@param theme Theme
function util.load(theme)
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight"

  -- load base theme
  util.syntax(theme.base)

  -- load syntax for plugins and terminal async
  local async
  async = vim.loop.new_async(vim.schedule_wrap(function()
    util.terminal(theme.colors)
    util.syntax(theme.plugins)
    async:close()
  end))
  async:send()

end

return util

