local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.search_bg = util.blend_bg(colors.info, 0.1)
  colors.pmenusel = util.blend_bg(colors.fg_gutter, 0.8)
  local yazi = util.template(
    [[
"$schema" = "https://yazi-rs.github.io/schemas/theme.json"
[app]
overall = { bg = "${bg_dark}"}

[mgr]
cwd = { fg = "${fg_dark}", italic = true }

# Find
find_keyword  = { fg = "${bg_dark}", bg = "${orange}", bold = true }
find_position = { fg = "${info}", bg = "${search_bg}", bold = true }

# Symlink
symlink_target = {italic = true}

# Marker
marker_copied   = { fg = "${green}", bg = "${green}" }
marker_cut      = { fg = "${red}", bg = "${red}" }
marker_marked   = { fg = "${magenta}", bg = "${magenta}" }
marker_selected = { fg = "${blue}", bg = "${blue}" }

# Count
count_copied   = { fg = "${bg_dark}", bg = "${green}" }
count_cut      = { fg = "${bg_dark}", bg = "${red}" }
count_selected = { fg = "${bg_dark}", bg = "${blue}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border_highlight}" }

# NOTE: can be combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

# Tab
[tabs]
active   = { fg = "${black}", bg = "${blue}" }
inactive = { fg = "${blue}", bg = "${fg_gutter}" }

[mode]
normal_main = { fg = "${black}", bg = "${blue}", bold = true }
normal_alt  = { fg = "${blue}", bg = "${fg_gutter}" }

select_main = { fg = "${black}", bg = "${magenta}", bold = true }
select_alt  = { fg = "${magenta}", bg = "${fg_gutter}" }

unset_main  = { fg = "${black}", bg = "${purple}", bold = true }
unset_alt   = { fg = "${purple}", bg = "${fg_gutter}" }

# Hover
[indicator]
parent         = { bg = "${bg_highlight}" }
current         = { bg = "${bg_highlight}" }
preview = { bg = "${bg_highlight}" }

[status]
overall   = { fg = "${fg}", bg = "${bg_dark}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

# Permissions
perm_type  = { fg = "${blue}" }
perm_read  = { fg = "${yellow}" }
perm_write = { fg = "${red}" }
perm_exec  = { fg = "${green}" }
perm_sep   = { fg = "${terminal_black}" }

# Progress
progress_label  = { fg = "${fg}", bold = true }
progress_normal = { fg = "${blue0}", bg = "${bg_highlight}" }
progress_error  = { fg = "${red1}", bg = "${bg_highlight}" }

# Which
[which]
cols            = 3
mask            = { bg = "${bg_dark}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = " ➜ "
separator_style = { fg = "${comment}" }

# Confirm
[confirm]
border  = { fg = "${blue2}" }
title   = { fg = "${border_highlight}" }
body = {}
list    = {}
btn_yes = { bg = "${bg_visual}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spottter
[spot]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }

# Notification
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${error}" }

# Icons
icon_info = ""
icon_warn = ""
icon_error = ""

# Picker
[pick]
border   = { fg = "${border_highlight}" }
active   = { fg = "${fg}",  bg = "${bg_visual}" }
inactive = { fg = "${fg}" }

# Input
[input]
border   = { fg = "${blue2}" }
title    = { fg = "${blue2}" }
value    = { fg = "${purple}" }
selected = { bg = "${bg_visual}" }

# Completion
[cmp]
border   = { fg = "${blue2}" }
active   = { fg = "${fg}", bg = "${pmenusel}" }
inactive = { fg = "${fg}" }

# Icons
icon_file    = ""
icon_folder  = ""
icon_command = ""

# Task manager
[tasks]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }
hovered = { fg = "${fg}", bg = "${bg_visual}" }

# Help menu
[help]
on      = { fg = "${green}" }
run     = { fg = "${magenta}" }
desc    = { fg = "${cyan}" }
hovered = { bg = "${bg_highlight}" }
footer  = { fg = "${fg}", bg = "${bg}" }

# File-specific styles
[filetype]
rules = [
	# Images
	{ mime = "image/*", fg = "${yellow}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${magenta}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Empty files
	# { mime = "inode/x-empty", fg = "${red}" },

	# Special files
	{ url = "*", is = "orphan", bg = "${red}" },
	{ url = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ url = "*/", fg = "${blue}" },
	{ url = "*", fg = "${fg}" }
]
    ]],
    colors
  )
  return yazi
end

return M
