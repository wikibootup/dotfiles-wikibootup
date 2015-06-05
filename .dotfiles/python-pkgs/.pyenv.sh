# pyenv set
export PYENV_ROOT=/usr/local/opt/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source /usr/local/opt/autoenv/activate.sh
