#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#2e7de9,bg=#a8aecb"

set -g message-style "fg=#2e7de9,bg=#a8aecb"
set -g message-command-style "fg=#2e7de9,bg=#a8aecb"

set -g pane-border-style "fg=#a8aecb"
set -g pane-active-border-style "fg=#2e7de9"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#2e7de9,bg=#d4d6e4"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#e9e9ed,bg=#2e7de9,bold] #S #[fg=#2e7de9,bg=#d4d6e4,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#d4d6e4,bg=#d4d6e4,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#d4d6e4] #{prefix_highlight} #[fg=#a8aecb,bg=#d4d6e4,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#a8aecb] %Y-%m-%d  %I:%M %p #[fg=#2e7de9,bg=#a8aecb,nobold,nounderscore,noitalics]#[fg=#e9e9ed,bg=#2e7de9,bold] #h "

setw -g window-status-activity-style "underscore,fg=#6172b0,bg=#d4d6e4"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#6172b0,bg=#d4d6e4"
setw -g window-status-format "#[fg=#d4d6e4,bg=#d4d6e4,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#d4d6e4,bg=#d4d6e4,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#d4d6e4,bg=#a8aecb,nobold,nounderscore,noitalics]#[fg=#2e7de9,bg=#a8aecb,bold] #I  #W #F #[fg=#a8aecb,bg=#d4d6e4,nobold,nounderscore,noitalics]"
  