" https://github.com/gmarik/Vundle.vim
""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

""""""""""""""""""""
" Installed Plugin list ( Don't comment the lines starting with 'Plugin'
" if you want to use packages in ~/.vim/bundle/)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' " 

" Keep Plugin commands between vundle#begin/end.
" :NERDTreeToggle or <C-n>
Plugin 'The-NERD-Tree'

" http://vimawesome.com/plugin/vim-powerline-love-story
Plugin 'lokaltog/vim-powerline'

" http://vimawesome.com/plugin/neocomplcache
" Auto complete
Plugin 'Shougo/neocomplcache.vim'

" http://vimawesome.com/plugin/gundo
" git mirror 
" :GundoToggle or C-g
Plugin 'sjl/gundo.vim'

" http://vimawesome.com/plugin/django-vim-sweeter-than-fiction
" Django autocomplete
Plugin 'django.vim'

" http://vimawesome.com/plugin/vim-multiple-cursors
" True Sublime Text style multiple selections for Vim
" :MultipleCursorsFind <pattern>
Plugin 'terryma/vim-multiple-cursors'

"http://vimawesome.com/plugin/python-mode
" :help pymode
" :help fold
Plugin 'klen/python-mode'
""""""""""""""""""""
" python mode color colom : disable
let g:pymode_options_colorcolumn = 0

" python mode auto folding : disable
let g:pymode_folding = 0

" python autocomplete : disable
let g:pymode_rope_complete_on_dot = 0
""""""""""""""""""""
" powerline setting
set encoding=utf-8
set laststatus=2
""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""
"Nerd tree automation 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"""""""""""""""""""""""""""""""
" NERDTreeToggle shortcut 
map <silent> <C-e> :NERDTreeToggle<CR>

" GundoToggle shortcut
map <silent> <C-g> :GundoToggle<CR>
"""""""""""""""""""""""""""""""
" http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
" Highlight excess line length : 80 ~ 120, but 80 set
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=Gray guibg=Black ctermfg=Black
    autocmd FileType python match Excess /\%119v.*/
    autocmd FileType python set nowrap
    augroup END

let g:pymode_options_max_line_length = 119
"""""""""""""""""""""""""""""""
" NEOCOMPLCACHE setting
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcace.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"""""""""""""""""""""""""""""""
" autocomplete menu bar background color 
highlight Pmenu ctermbg=238 guibg=bold

"""""""""""""""""""""""""""""""
set cindent
syntax on
set nu
set ts=2 " '\t' -> spaces
set sw=2 " shift width : auto indent spaces
set sts=2 " (soft tab stop) tab -> spaces
" set expandtab

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
set background=dark

" With "setlocal" only the local value is changed,
" thus this value is not used when editing a new buffer.
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 smartindent
autocmd Filetype html,markdown setlocal smartindent omnifunc=htmlcomplete#CompleteTags
autocmd Filetype python setlocal et sw=4 sts=4 ts=4 smartindent list lcs=tab:\|.,trail:~ " display tab as ~ 
