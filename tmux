## keybindings
unbind C-b
unbind C-a
unbind % 
unbind ,
unbind .
unbind n
unbind p
unbind [
unbind '"'
unbind l
unbind &
unbind "'"

set-option -g prefix C-a # C-a for perfix just like screen

bind-key C-a    last-window
bind-key |      split-window -h
bind-key \      split-window -h
bind-key -      split-window -v
bind-key x      kill-pane
bind-key X      kill-window
bind-key q      confirm-before kill-session
bind-key Q      confirm-before kill-server
bind-key ,      previous-window # <
bind-key .      next-window     # >
bind-key <      swap-window -t :-
bind-key >      swap-window -t :+
bind-key n      command-prompt 'rename-window %%'
bind-key N      command-prompt 'rename-session %%'
bind-key Escape copy-mode -u
bind-key Up     copy-mode -u
bind-key r      source-file ~/.tmux.conf; display-message " ✱ ~/.tmux.conf is reloaded"
bind-key R      refresh-client
bind-key a      send-key C-a
# bind-key C-j    resize-pane -L 5
# bind-key C-l    resize-pane -R 5
# bind-key C-k    resize-pane -D 5
# bind-key C-i    resize-pane -U 5
bind-key C-h    resize-pane -L 5
bind-key C-l    resize-pane -R 5
bind-key C-j    resize-pane -D 5
bind-key C-k    resize-pane -U 5


## set status bar
set-option -g status-utf8 on
set-option -g status-bg colour11
set-option -g status-fg colour8

#set-option -g status-left '⣿'
#set-option -g status-right '⡇ #[bold]❐ #S:#I#[default] ⡇ #[bold]#(whoami) ● #H#[default] '
#set-option -g status-right '⡇ ❐ #S ⡇ ❖ #(rvm tools identifier) ⡇ #(whoami) ● #H '
set-option -g status-left ' #[bold]❐ #S#[default] ⡇'
# set-option -g status-right '#[bold]#(whoami) ● #H ⡇ %H:%M #[default] '
set-option -g status-right '#[bold]#(whoami) ● #H#[default] '

set-option -g status-right-length 60
set-option -g status-left-length 60

## highlight active window
set-window-option -g window-status-current-bg colour166
set-window-option -g window-status-current-fg colour15
set-window-option -g window-status-current-attr bold
set-window-option -g window-status-current-format ' #I #W '

## set window notifications
set-option -g visual-activity on
set-option -g visual-content on
set-window-option -g monitor-activity on
set-window-option -g automatic-rename off

## tmux window titling for X
set-option -g set-titles on
set-option -g set-titles-string '[#I] #W'
set-window-option -g automatic-rename on
set-window-option -g window-status-format ' #I #W '
set-window-option -g window-status-attr bold
# starts windows at 1 not 0
set-option -g base-index 1

## enable mouse
set-option -g mouse-select-pane on
set-window-option -g mode-keys vi
set-window-option -g mode-mouse on
# set-window-option -g monitor-activity off
# set-window-option -g monitor-content off
# set-option -g status-keys vi
# set-option -g history-limit 4096

## pane border and colors
set-option -g pane-active-border-fg yellow
set-option -g pane-border-fg white

## assume 256 colors
set -g default-terminal "screen-256color"

# move tmux copy buffer into x clipboard
# bind-key C-y save-buffer /tmp/tmux-buffer \\; run-shell "cat /tmp/tmux-buffer | pbcopy"
# bind-key C-y save-buffer /tmp/tmux-buffer \\\\; run-shell "cat /tmp/tmux-buffer | xsel --clipboard --input"
bind-key C-y run-shell "tmux showb | xsel --clipboard --input"
