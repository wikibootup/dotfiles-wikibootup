# hub alias
eval "$(hub alias -s)"

# git autocomplete(also contain hub)
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# git alias
alias gadd='git add'
alias gm='git commit -m'
alias gd='git diff'
alias gs='git status'
