local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.bg_search = util.blend_bg(colors.info, 0.1)
  local yazi = util.template(
    [[
[manager]
# NOTE: can combined with tmTheme (sublime colorshceme file) for preview code highlight
# highlight = "path/to/tmTheme"

cwd = { fg = "${fg_dark}", italic = true }

# Hovered
hovered         = { bg = "${bg_highlight}" }
preview_hovered = { bg = "${bg_highlight}" }

# Find
find_keyword  = { fg = "${bg_dark}", bg = "${orange}", bold = true }
find_position = { fg = "${blue2}", bg = "${bg_search}", bold = true }

# Marker
marker_copied   = { fg = "${green1}", bg = "${green1}" }
marker_cut      = { fg = "${red}", bg = "${red}" }
marker_marked   = { fg = "${magenta}", bg = "${magenta}" }
marker_selected = { fg = "${blue}", bg = "${blue}" }

# Tab
tab_active   = { fg = "${fg}", bg = "${bg_highlight}" }
tab_inactive = { fg = "${fg_gutter}", bg = "${bg}" }
tab_width    = 1

# Count
count_copied   = { fg = "${fg}", bg = "${green2}" }
count_cut      = { fg = "${fg}", bg = "${red1}" }
count_selected = { fg = "${fg}", bg = "${blue0}" }
# Border
border_symbol = "│"
border_style  = { fg = "${border_highlight}" }

[status]
separator_open  = ""
separator_close = ""
separator_style = { fg = "${fg_gutter}", bg = "${fg_gutter}" }

# Mode
mode_normal = { fg = "${bg_dark}", bg = "${blue}", bold = true }
mode_select = { fg = "${bg_dark}", bg = "${magenta}", bold = true }
mode_unset  = { fg = "${bg_dark}", bg = "${purple}", bold = true }

# Progress
progress_label  = { fg = "${fg_dark}", bold = true }
progress_normal = { fg = "${bg}" }
progress_error  = { fg = "${red}" }

# Permissions
permissions_t = { fg = "${blue}" }
permissions_r = { fg = "${yellow}" }
permissions_w = { fg = "${red}" }
permissions_x = { fg = "${green}" }
permissions_s = { fg = "${terminal_black}" }

[select]
border   = { fg = "${border_highlight}" }
active   = { fg = "${fg}",  bg = "${bg_visual}" }
inactive = { fg = "${fg}" }

# Input
[input]
border   = { fg = "${blue2}" }
title    = {}
value    = { fg = "${purple}" }
selected = { bg = "${bg_visual}" }

# Completion
[completion]
border   = { fg = "${blue2}" }
active   = { fg = "${fg}", bg = "${bg_visual}" }
inactive = { fg = "${fg}" }

# Tasks
[tasks]
border  = { fg = "${border_highlight}" }
title   = {}
hovered = { fg = "${fg}", bg="${bg_visual}" }

# Which
[which]
cols = 3
mask            = { bg = "${bg_dark}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${magenta}" }
separator       = "  "
separator_style = { fg = "${comment}" }

# Notify
[notify]
title_info  = { fg = "${blue2}" }
title_warn  = { fg = "${yellow}" }
title_error = { fg = "${red}" }

# Help
[help]
on      = { fg = "${green}" }
run     = { fg = "${magenta}" }
hovered = { bg = "${bg_visual}" }
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
	{ name = "*/", fg = "${blue}" }
]
    ]],
    colors
  )
  return yazi
end

return M
