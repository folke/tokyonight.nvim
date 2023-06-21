local util = require("tokyonight.util")

local function hex2rgb(key, value)
  local hex = value:gsub("#", "")

  local r = tonumber(hex:sub(1, 2), 16)
  local g = tonumber(hex:sub(3, 4), 16)
  local b = tonumber(hex:sub(5, 6), 16)

  return string.format("Rgb(%s,%s,%s), // %s %s", r, g, b, key, value)
end

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gitui_colors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      gitui_colors[k] = hex2rgb(k, v)
    end
  end

  local gitui = util.template(
    [[
(
  selected_tab: ${magenta}
  command_fg: ${comment}
  selection_bg: ${bg_highlight}
  selection_fg: ${cyan}
  cmdbar_bg: ${bg}
  cmdbar_extra_lines_bg: ${bg}
  disabled_fg: ${comment}
  diff_line_add: ${green}
  diff_line_delete: ${red}
  diff_file_added: ${green1}
  diff_file_removed: ${red1}
  diff_file_moved: ${magenta2}
  diff_file_modified: ${yellow}
  commit_hash: ${magenta}
  commit_time: ${teal}
  commit_author: ${green}
  danger_fg: ${red}
  push_gauge_bg: ${bg}
  push_gauge_fg: ${fg}
  tag_fg: ${magenta2}
  branch_fg: ${yellow}
)
]],
    gitui_colors
  )

  return gitui
end

return M
