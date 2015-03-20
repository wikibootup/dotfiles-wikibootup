#!/bin/sh
# tmux set
alias t='tmux'
alias mt='tmux split-window -v -p 15 && tmux select-pane -U && tmux split-window -h -p 80'
alias mt4='tmux split-window -v -p 50 && tmux split-window -h -p 50 && tmux select-pane -U && tmux split-window -h -p 50'
alias ct='tmux kill-pane -a'
# usage : for 50% of horizontal split, $ th 50
alias 'th'='tmux split-window -v -p'
alias 'tv'='tmux split-window -h -p'
alias 'td'='tmux detach'
alias 'tas'='tmux attach-session -t'
alias 'tp'='tmux show-buffer'
alias 'tlb'='tmux list-buffers'

# http://osquestions.com/unix-linux/61719/changing-tmux-bash-profile-behavior
# when tmux start, i can test something
# called inside tmux session, do tmux things
# if [[ -n "$TMUX" ]]; then
# fi
