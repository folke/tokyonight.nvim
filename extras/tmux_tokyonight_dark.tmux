#!/usr/bin/env bash

none="none"
bg_dark="#1f2335"
fg_dark="#a9b1d6"
fg_gutter="#3b4261"
blue="#7aa2f7"

black="#15161e"

set -g message-fg $blue
set -g message-bg $fg_gutter

set -g message-command-fg $blue
set -g message-command-bg $fg_gutter

set -g pane-active-border-fg $blue
set -g pane-active-border-fg $none

set -g pane-border-fg $fg_gutter
set -g pane-border-bg $none

set -g status "on"
set -g status-justify "left"

set -g status-fg $blue
set -g status-bg $bg_dark

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style $none
set -g status-right-style $none

set -g status-left "#[fg=${black},bg=${blue},bold] #S #[fg=${blue},bg=${bg_dark},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg_dark},bg=${bg_dark},nobold,nounderscore,noitalics]##[fg=${blue},bg=${bg_dark}] #{prefix_highlight} #[fg=${fg_gutter},bg=${bg_dark},nobold,nounderscore,noitalics]#[fg=${blue},bg=${fg_gutter}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${black},bg=${blue},bold] #h "

setw -g window-status-activity-style "underscore,fg=${fg_dark},bg=#${bg_dark}"
setw -g window-status-separator ""
setw -g window-status-style "${none},fg=${fg_dark},bg=${bg_dark}"
setw -g window-status-format "#[fg=${bg_dark},bg=${bg_dark},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg_dark},bg=${bg_dark},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg_dark},bg=${fg_gutter},nobold,nounderscore,noitalics]#[fg=${blue},bg=${fg_gutter},bold] #I  #W #F #[fg=${fg_gutter},bg=${bg_dark},nobold,nounderscore,noitalics]"
