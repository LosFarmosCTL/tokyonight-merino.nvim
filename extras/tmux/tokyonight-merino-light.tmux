#!/usr/bin/env bash

# TokyoNight Merino colors for Tmux

set -g mode-style "fg=#0969da,bg=#e7e9eb"

set -g message-style "fg=#0969da,bg=#e7e9eb"
set -g message-command-style "fg=#0969da,bg=#e7e9eb"

set -g pane-border-style "fg=#e7e9eb"
set -g pane-active-border-style "fg=#0969da"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#0969da,bg=#f0f0f0"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#ffffff,bg=#0969da,bold] #S #[fg=#0969da,bg=#f0f0f0,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#f0f0f0,bg=#f0f0f0,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#f0f0f0] #{prefix_highlight} #[fg=#e7e9eb,bg=#f0f0f0,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#e7e9eb] %Y-%m-%d  %I:%M %p #[fg=#0969da,bg=#e7e9eb,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#0969da,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#f0f0f0,bg=#f0f0f0,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#f0f0f0] #{prefix_highlight} #[fg=#e7e9eb,bg=#f0f0f0,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#e7e9eb] %Y-%m-%d  %H:%M #[fg=#0969da,bg=#e7e9eb,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#0969da,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#696d71,bg=#f0f0f0"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#696d71,bg=#f0f0f0"
setw -g window-status-format "#[fg=#f0f0f0,bg=#f0f0f0,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#f0f0f0,bg=#f0f0f0,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#f0f0f0,bg=#e7e9eb,nobold,nounderscore,noitalics]#[fg=#0969da,bg=#e7e9eb,bold] #I  #W #F #[fg=#e7e9eb,bg=#f0f0f0,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#9d5c00]#[bg=#f0f0f0]#[fg=#f0f0f0]#[bg=#9d5c00]"
set -g @prefix_highlight_output_suffix ""
