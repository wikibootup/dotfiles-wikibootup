" Comback to the simple vimrc.
" Complex makes complex.

"" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
"[
" Haskell
  Plugin 'dag/vim2hs'

" Python
  " in progress
  " ref : https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
  " Folding modules
  Plugin 'tmhedberg/SimpylFold'
  Plugin 'vim-scripts/indentpython.vim'
"]
call vundle#end()            " required
filetype plugin indent on    " required

"" Basic syntax
" Global
set cindent
syntax on
set nu
set backspace=2 " If delete key doesn't working, try the left.
set paste

" ts : \t size
" sts : [tab] key size
" sw : tab size
" et : tab as a space
set ts=2 sts=2 sw=2 et

" Local
autocmd Filetype rst setlocal ts=3 sts=3 sw=3 et smartindent
autocmd Filetype haskell,javascript,python,cpp setlocal ts=4 sts=4 sw=4 et smartindent list lcs=tab:\|.,trail:~ " display tab as ~
autocmd Filetype html,markdown setlocal ts=2 sts=2 sw=2 et smartindent
autocmd Filetype asm,c setlocal ts=8 sts=8 sw=8 et smartindent
