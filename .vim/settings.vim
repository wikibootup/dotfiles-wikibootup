let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
	exe 'source' fpath
endfor


" http://stackoverflow.com/questions/3534028/mac-terminal-vim-will-only-use-backspace-when-at-the-end-of-a-line
" For macvim : Allow backspacing over everything in insert mode

set backspace=indent,eol,start
