" Global tab space settings
set cindent
syntax on
set nu
set ts=4 " '\t' -> spaces
set sw=4 " shift width : auto indent spaces
set sts=4 " (soft tab stop) tab -> spaces
set expandtab

" Local tab space settings for Specific language
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 smartindent
autocmd Filetype html,markdown setlocal ts=2 sts=2 sw=2 smartindent
autocmd Filetype python setlocal et sw=4 sts=4 ts=4 smartindent list lcs=tab:\|.,trail:~ " display tab as ~
