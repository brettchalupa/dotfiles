""""" vimrc
"
" These are my settings for vim.
"
"""""

filetype plugin indent on " turn on plugin and indention for filetype detection
syntax on " turn on syntax highlighting
set textwidth=80 " wrap at 80 chars
set number " display line numbers
set ruler " show the line number and column in the status line
set laststatus=2 " always set the last window to have a status line

" use jj to exit insert mode
:imap jj <Esc>

set backspace=indent,eol,start

" this could be moved into filestype specific plugins
set tabstop=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the autoindent to be 2 chars
set expandtab " use spaces when pressing tab
set autoindent " autoindents code

""" Handling invisible characters
set list " show invisible characters
set listchars="" " reset list chars
set listchars+=tab:·\
set listchars+=trail:. " display trailing spaces as dots

set pastetoggle=<F2>

""" file type specific settings
" go
au! BufNewFile,BufRead *.go setf go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" html
" autocmd FileType html set noautoindent
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab

" haxe
au! BufNewFile,BufRead *.hx setf haxe
autocmd FileType haxe set tabstop=4|set shiftwidth=4|set noexpandtab

" liquid ext settings
au! BufNewFile,BufRead,BufReadPost *.js.liquid setf javascript

" markdown (display as just plain text)
au BufRead,BufNewFile *.md,*.markdown,*.mdown set filetype=text

" email wrap at 68
autocmd FileType email set textwidth=68
autocmd FileType mail set textwidth=68

" c++ settings
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set noexpandtab

" use tabs for make files
autocmd filetype make setlocal noexpandtab

" js
autocmd FileType js set tabstop=2|set shiftwidth=2|set expandtab

" fix for :E to work as expected
let g:loaded_logipat = 1

" Disable archive and temporary files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/tmp/*

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore Node and Bower files
set wildignore+=*/node_modules/*,*/bower_components/*

" Ignore generated Jekyll site
set wildignore+=*/_site/*

" Ignore HaxeFlixel exports
set wildignore+=*/export/*
