local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tmux = util.template(
    [[
#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=${blue},bg=${fg_gutter}"

set -g message-style "fg=${blue},bg=${fg_gutter}"
set -g message-command-style "fg=${blue},bg=${fg_gutter}"

set -g pane-border-style "fg=${fg_gutter}"
set -g pane-active-border-style "fg=${blue}"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=${blue},bg=${bg_statusline}"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style ${none}
set -g status-right-style ${none}

set -g status-left "#[fg=${black},bg=${blue},bold] #S #[fg=${blue},bg=${bg_statusline},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg_statusline}] #{prefix_highlight} #[fg=${fg_gutter},bg=${bg_statusline},nobold,nounderscore,noitalics]#[fg=${blue},bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "

setw -g window-status-activity-style "underscore,fg=${fg_sidebar},bg=${bg_statusline}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${fg_sidebar},bg=${bg_statusline}"
setw -g window-status-format "#[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg_statusline},bg=${bg_statusline},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg_statusline},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${blue},bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=${bg_statusline},nobold,nounderscore,noitalics]"
  ]],
    colors
  )
  return tmux
end

return M
