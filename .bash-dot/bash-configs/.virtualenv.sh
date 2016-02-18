# below code did not work when booting TMUX first,
# Therefore It was added for TMUX, for now.
if [ -f ".env" ]; then
  . .env
fi

if [ -n "$VIRTUAL_ENV" ]; then
  . "$VIRTUAL_ENV/bin/activate"
#else
#  workon default
fi


