" """"""""""""""""""""
" Python mode color colomn
let g:pymode_options_colorcolumn = 0

" Python mode auto folding
let g:pymode_folding = 0

" Python mode autocomplete
let g:pymode_rope_complete_on_dot = 0

" Pep Caution max length
let g:pymode_options_max_line_length = 119


" http://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
" Highlight excess line length : 80 ~ 120, but 80 set

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=Gray guibg=Black ctermfg=Black
    autocmd FileType python match Excess /\%79v.*/
    autocmd FileType python set nowrap
    augroup END


" Set color applied If over max line length

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
set background=dark
