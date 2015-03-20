# hub alias
eval "$(hub alias -s)"

# git autocomplete
if [ -f ~/.dot/.git-completion.bash ]; then
  . ~/.dot/.git-completion.bash
fi

# git alias
alias gadd='git add'
alias gm='git commit -m'
alias gd='git diff'
alias gs='git status'
