local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.search_bg = util.blend_bg(colors.info, 0.1)
  colors.pmenusel = util.blend_bg(colors.fg_gutter, 0.8)
  local yazi = util.template(
    [[
[mgr]
# NOTE: can be combined with tmTheme (sublime colorshceme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${fg_dark}", italic = true }

# Hovered
hovered         = { bg = "${bg_highlight}" }
preview_hovered = { bg = "${bg_highlight}" }

# Find
find_keyword  = { fg = "${bg_dark}", bg = "${orange}", bold = true }
find_position = { fg = "${info}", bg = "${search_bg}", bold = true }

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

[status]
overall   = { fg = "${fg}", bg = "${bg_dark}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

# Progress
progress_label  = { fg = "${fg}", bold = true }
progress_normal = { fg = "${blue0}", bg = "${bg_highlight}" }
progress_error  = { fg = "${red1}", bg = "${bg_highlight}" }

# Permissions
perm_type  = { fg = "${blue}" }
perm_read  = { fg = "${yellow}" }
perm_write = { fg = "${red}" }
perm_exec  = { fg = "${green}" }
perm_sep   = { fg = "${terminal_black}" }

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

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }
hovered = { fg = "${fg}", bg = "${bg_visual}" }

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
content = {}
list    = {}
btn_yes = { bg = "${bg_visual}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border_highlight}" }
title   = { fg = "${border_highlight}" }

# Notify
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${error}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
on      = { fg = "${green}" }
run     = { fg = "${magenta}" }
desc    = { fg = "${cyan}" }
hovered = { bg = "${bg_highlight}" }
footer  = { fg = "${fg}", bg = "${bg}" }

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
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${blue}" },
	{ name = "*", fg = "${fg}" }
]
    ]],
    colors
  )
  return yazi
end

return M
