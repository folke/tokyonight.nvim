local util = require("tokyonight.util")

local M = {}

function M.generate(colors)
  local gnome_colors = {}
  for k, v in pairs(colors) do
    local is_color = type(v) == "string" and v:find("^#[%x]") ~= nil
    if is_color then
      local hex = v:gsub("^#", "")
      local r = tonumber(hex:sub(1, 2), 16)
      local g = tonumber(hex:sub(3, 4), 16)
      local b = tonumber(hex:sub(5, 6), 16)
      gnome_colors[k] = string.format("rgb(%d, %d, %d)", r, g, b)
    else
      gnome_colors[k] = v
    end
  end

  local gnome_terminal = util.template(
    [[
# Import this theme as follows:
# 1. Create a new profile for GNOME Terminal
# 2. Copy the UUID of the new profile (bottom right corner of the preferences window)
# 3. Replace <PROFILE_UUID> below with the copied UUID
# 4. Execute `dconf load /org/gnome/terminal/legacy/profiles:/ < ${_name}.dconf`

[:<PROFILE_UUID>]
background-color='${bg}'
cursor-background-color='${fg}'
cursor-colors-set=true
cursor-foreground-color='${bg}'
foreground-color='${fg}'
highlight-background-color='${fg}'
highlight-colors-set=true
highlight-foreground-color='${bg}'
palette=['${terminal_black}', '${red}', '${green}', '${yellow}', '${blue}', '${magenta}', '${cyan}', '${fg}', '${terminal_black}', '${red}', '${green}', '${yellow}', '${blue}', '${magenta}', '${cyan}', '${fg}']
use-theme-colors=false
visible-name='${_style_name}'
]],
    gnome_colors
  )
  return gnome_terminal
end

return M
