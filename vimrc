""""" vimrc
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

au! BufNewFile,BufRead *.js setf javascript
autocmd FileType javascript set shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript.jsx set shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescript set shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescript.jsx set shiftwidth=2 tabstop=2 expandtab

autocmd FileType markdown let b:coc_suggest_disable = 1

" Disable archive and temporary files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/tmp/*

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore Node and Bower files
set wildignore+=*/node_modules/*,*/bower_components/*

" Ignore generated Jekyll site
set wildignore+=*/_site/*

" Ignore Haxe builds
set wildignore+=*/export/*

" Ignore generated Soy site
set wildignore+=*/build/*

""""""""""" CoC config
" Better CoC.nvim colors for light theme
highlight CocFloating ctermbg=lightred
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

nmap <leader>r :Tmux cargo run<CR>
nmap <leader>f :RustFmt<CR>
autocmd FileType rust nmap <leader>t :Tmux cargo test<CR>

let g:rustfmt_autosave = 1
