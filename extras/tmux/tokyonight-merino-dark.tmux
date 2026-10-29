#!/usr/bin/env bash

# TokyoNight Merino colors for Tmux

set -g mode-style "fg=#58a6ff,bg=#2e3135"

set -g message-style "fg=#58a6ff,bg=#2e3135"
set -g message-command-style "fg=#58a6ff,bg=#2e3135"

set -g pane-border-style "fg=#2e3135"
set -g pane-active-border-style "fg=#58a6ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#58a6ff,bg=#0a0e12"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#0d1117,bg=#58a6ff,bold] #S #[fg=#58a6ff,bg=#0a0e12,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#0a0e12,bg=#0a0e12,nobold,nounderscore,noitalics]#[fg=#58a6ff,bg=#0a0e12] #{prefix_highlight} #[fg=#2e3135,bg=#0a0e12,nobold,nounderscore,noitalics]#[fg=#58a6ff,bg=#2e3135] %Y-%m-%d  %I:%M %p #[fg=#58a6ff,bg=#2e3135,nobold,nounderscore,noitalics]#[fg=#0d1117,bg=#58a6ff,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#0a0e12,bg=#0a0e12,nobold,nounderscore,noitalics]#[fg=#58a6ff,bg=#0a0e12] #{prefix_highlight} #[fg=#2e3135,bg=#0a0e12,nobold,nounderscore,noitalics]#[fg=#58a6ff,bg=#2e3135] %Y-%m-%d  %H:%M #[fg=#58a6ff,bg=#2e3135,nobold,nounderscore,noitalics]#[fg=#0d1117,bg=#58a6ff,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#82878c,bg=#0a0e12"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#82878c,bg=#0a0e12"
setw -g window-status-format "#[fg=#0a0e12,bg=#0a0e12,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#0a0e12,bg=#0a0e12,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#0a0e12,bg=#2e3135,nobold,nounderscore,noitalics]#[fg=#58a6ff,bg=#2e3135,bold] #I  #W #F #[fg=#2e3135,bg=#0a0e12,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#d29922]#[bg=#0a0e12]#[fg=#0a0e12]#[bg=#d29922]"
set -g @prefix_highlight_output_suffix ""
