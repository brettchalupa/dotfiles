""""" vimrc
"
" These are my settings for vim in conjunction with our Big Cartel Dotmatrix
" fork
"
"""""


"""""""""""""""""""""""""""""
" intentional dotmatrix overrides
""""""""""""""""""""""""""""

" use jj to exit insert mode
:imap jj <Esc>

" light theme support
set background=light

" turn off the visual bell from Dotmatrix
set novisualbell

"""""""""""""""""""""""""""""
" my own personal preferences
""""""""""""""""""""""""""""

" Allow :E to work as expected
command! E Explore

""" file type specific settings
" go
au! BufNewFile,BufRead *.go setf go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" Disable archive and temporary files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/tmp/*

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore Node and Bower files
set wildignore+=*/node_modules/*,*/bower_components/*

" Ignore generated Jekyll site
set wildignore+=*/_site/*
