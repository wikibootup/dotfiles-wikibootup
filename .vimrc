" Comback to the simple vimrc.
" Complex makes complex if you know just little, and if your memory doesn't last long.

""""""""""""""" 
" Global set
set cindent
syntax on
set nu
set backspace=2 " If delete key doesn't working, try the left.
"""""""""""""""
" Local tab space settings for Specific language
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 smartindent
autocmd Filetype html,markdown setlocal ts=2 sts=2 sw=2 smartindent
autocmd Filetype python setlocal et sw=4 sts=4 ts=4 smartindent list lcs=tab:\|.,trail:~ " display tab as ~
"""""""""""""""
""""""""""""
" vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
""""""""""" 
" vundles

" haskell
Plugin 'dag/vim2hs'

" All of your Plugins must be added before the following line
"""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required
