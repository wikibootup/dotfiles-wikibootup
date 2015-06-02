# hub alias
eval "$(hub alias -s)"

# git autocomplete(also contain hub)
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# for showing git branch in prompt
# https://coderwall.com/p/fz0e0g/show-current-git-branch-name-in-bash-ps1
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

# Git alias
alias gadd='git add'
alias gm='git commit -m'
alias gd='git diff'
alias gs='git status'
alias gamend='git commit --amend'

# Cancel previous load stash
alias guna='!git stash show -p | git apply -R'
# More recommend to use followed alias if you set 'git autocomplete'
# git config --global alias.stash-unapply '!git stash show -p | git apply -R'
