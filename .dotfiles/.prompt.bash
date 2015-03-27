# Shell text color set
# If you wanna dynamic refresh status, put '\' before variables (like \$(__git_ps1))
SHELL_LOGO="\[\033[1m\]\[\033[m\] "
SHELL_INFO_HOST_AND_DIR="\u \w"
SHELL_INFO_GIT_BRANCH="\$(__git_ps1) "
SHELL_PROMPT_SIGN="$ "

export PS1=$SHELL_LOGO$SHELL_INFO_HOST_AND_DIR$SHELL_INFO_GIT_BRANCH$SHELL_PROMPT_SIGN
export CLICOLOR=1
export LSCOLORS=DxFxCxGxBxegedabagaced
