local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local gitui = util.template(
    [[
(
  selected_tab: Some("${magenta}"),
  command_fg: Some("${comment}"),
  selection_bg: Some("${bg_highlight}"),
  selection_fg: Some("${cyan}"),
  cmdbar_bg: Some("${bg}"),
  cmdbar_extra_lines_bg: Some("${bg}"),
  disabled_fg: Some("${comment}"),
  diff_line_add: Some("${green}"),
  diff_line_delete: Some("${red}"),
  diff_file_added: Some("${green1}"),
  diff_file_removed: Some("${red1}"),
  diff_file_moved: Some("${magenta2}"),
  diff_file_modified: Some("${yellow}"),
  commit_hash: Some("${magenta}"),
  commit_time: Some("${teal}"),
  commit_author: Some("${green}"),
  danger_fg: Some("${red}"),
  push_gauge_bg: Some("${bg}"),
  push_gauge_fg: Some("${fg}"),
  tag_fg: Some("${magenta2}"),
  branch_fg: Some("${yellow}")
)
]],
    colors
  )

  return gitui
end

return M
