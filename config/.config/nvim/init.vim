set number

" set listchars=tab:\|\ ,eol:¬\,trail:·
" set list

" Return to last edit position when opening files.
augroup LastPosition
    autocmd!
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
augroup END

" Don't auto insert comments.
set formatoptions-=cro

" Highlight line but not column.
set cursorline nocursorcolumn

" Ignore case when searching.
set ignorecase
" Switch to case sensitive when having both cases in query.
set smartcase

" Use dark mode for themes
set background=dark

" Set theme
colorscheme badwolf

