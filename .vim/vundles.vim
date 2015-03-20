" https://github.com/gmarik/Vundle.vim

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vundles/ "Submodules
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Installed Plugin list ( Don't comment the lines starting with 'Plugin'
" if you want to use packages in ~/.vim/bundle/)

runtime vim-improvements.vundle
runtime python.vundle


" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
