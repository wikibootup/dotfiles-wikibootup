#!/bin/sh

# Tmux set
alias t='tmux'
alias mt='tmux split-window -v -p 15 && tmux select-pane -U && tmux split-window -h -p 80'
alias mt4='tmux split-window -v -p 50 && tmux split-window -h -p 50 && tmux select-pane -U && tmux split-window -h -p 50'
alias ct='tmux kill-pane -a'

# Usage : for 50% of horizontal split, $ th 50
alias 'th'='tmux split-window -v -p'
alias 'tv'='tmux split-window -h -p'
alias 'tp'='tmux show-buffer'
alias 'tlb'='tmux list-buffers'

# Session
alias 'tn'='tmux new -s'
alias 'td'='tmux detach'
alias 'ta'='tmux attach-session -t'
