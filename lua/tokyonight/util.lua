local util = {}

util.colorsUsed = {}

util.bg = "#000000"
util.fg = "#ffffff"

local function hexToRgb(hex_str)
  local hex = "[abcdef0-9][abcdef0-9]"
  local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

local function luma(color, alpha, bg)
  bg = bg or util.bg

  bg = hexToRgb(bg)
  color = hexToRgb(color)

  alpha = 1 - ((alpha or 0) / 100)

  local blend = function(i)
    return math.floor(math.min(math.max(0, (alpha * (color[i]) + ((1 - alpha) * (bg[i])))), 255) +
                        .5)
  end

  return string.format("#%02X%02X%02X", blend(1), blend(2), blend(3))
end

function util.darken(hex, amount) return luma(hex, math.abs(amount), util.bg) end
function util.lighten(hex, amount) return luma(hex, math.abs(amount), util.fg) end

function util.highlight(group, color)
  if color.fg then util.colorsUsed[color.fg] = true end
  if color.bg then util.colorsUsed[color.bg] = true end
  if color.sp then util.colorsUsed[color.sp] = true end

  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

function util.debug(colors)
  colors = colors or require("tokyonight.colors")
  -- Dump unused colors
  for name, color in pairs(colors) do
    if type(color) == "table" then
      util.debug(color)
    else
      if util.colorsUsed[color] == nil then print("not used: " .. name .. " : " .. color) end
    end
  end
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
  vim.g.terminal_color_8 = colors.fg_gutter
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
    -- util.terminal(theme.colors)
    util.syntax(theme.plugins)
    async:close()
  end))
  async:send()

end

return util

