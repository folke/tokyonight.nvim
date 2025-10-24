local util = require("tokyonight.util")

local M = {}

function M.generate(colors)
  local eza = util.template(
    [[
colourful: true

filekinds:
  normal: { foreground: "${fg}" }
  directory: { foreground: "${blue}" }
  symlink: { foreground: "${blue1}" }
  pipe: { foreground: "${terminal_black}" }
  block_device: { foreground: "${yellow}" }
  char_device: { foreground: "${yellow}" }
  socket: { foreground: "${terminal_black}" }
  special: { foreground: "${purple}" }
  executable: { foreground: "${green}" }
  mount_point: { foreground: "${blue6}" }

perms:
  user_read: { foreground: "${blue1}" }
  user_write: { foreground: "${magenta}" }
  user_execute_file: { foreground: "${green}" }
  user_execute_other: { foreground: "${green}" }
  group_read: { foreground: "${blue1}" }
  group_write: { foreground: "${orange}" }
  group_execute: { foreground: "${green}" }
  other_read: { foreground: "${blue1}" }
  other_write: { foreground: "${magenta2}" }
  other_execute: { foreground: "${green}" }
  special_user_file: { foreground: "${magenta2}" }
  special_other: { foreground: "${red1}" }
  attribute: { foreground: "${dark5}" }

size:
  major: { foreground: "${blue1}" }
  minor: { foreground: "${purple}" }
  number_byte: { foreground: "${fg_dark}" }
  number_kilo: { foreground: "${blue5}" }
  number_mega: { foreground: "${blue1}" }
  number_giga: { foreground: "${orange}" }
  number_huge: { foreground: "${magenta2}" }
  unit_byte: { foreground: "${fg_dark}" }
  unit_kilo: { foreground: "${blue5}" }
  unit_mega: { foreground: "${blue1}" }
  unit_giga: { foreground: "${orange}" }
  unit_huge: { foreground: "${magenta2}" }

users:
  user_you: { foreground: "${blue0}" }
  user_root: { foreground: "${magenta}" }
  user_other: { foreground: "${blue1}" }
  group_yours: { foreground: "${blue5}" }
  group_root: { foreground: "${magenta}" }
  group_other: { foreground: "${fg}" }

links:
  normal: { foreground: "${blue5}" }
  multi_link_file: { foreground: "${blue1}" }

git:
  new: { foreground: "${green}" }
  modified: { foreground: "${magenta}" }
  deleted: { foreground: "${red1}" }
  renamed: { foreground: "${blue1}" }
  typechange: { foreground: "${blue1}" }
  ignored: { foreground: "${dark3}" }
  conflicted: { foreground: "${orange}" }

git_repo:
  branch_main: { foreground: "${dark5}" }
  branch_other: { foreground: "${blue6}" }
  git_clean: { foreground: "${bg_highlight}" }
  git_dirty: { foreground: "${magenta}" }

security_context:
  colon: { foreground: "${dark3}" }
  user: { foreground: "${dark5}" }
  role: { foreground: "${blue1}" }
  typ: { foreground: "${bg_search}" }
  range: { foreground: "${purple}" }

file_type:
  image: { foreground: "${blue5}" }
  video: { foreground: "${blue6}" }
  music: { foreground: "${green1}" }
  lossless: { foreground: "${green2}" }
  crypto: { foreground: "${red1}" }
  document: { foreground: "${fg_dark}" }
  compressed: { foreground: "${orange}" }
  temp: { foreground: "${dark5}" }
  compiled: { foreground: "${dark5}" }
  build: { foreground: "${teal}" }
  source: { foreground: "${magenta}" }

punctuation: { foreground: "${bg_highlight}" }
date: { foreground: "${yellow}" }
inode: { foreground: "${dark5}" }
blocks: { foreground: "${dark5}" }
header: { foreground: "${fg_dark}" }
octal: { foreground: "${orange}" }
flags: { foreground: "${purple}" }

symlink_path: { foreground: "${blue5}" }
control_char: { foreground: "${orange}" }
broken_symlink: { foreground: "${magenta2}" }
broken_path_overlay: { foreground: "${magenta2}" }]],
    colors
  )

  return eza
end

return M
