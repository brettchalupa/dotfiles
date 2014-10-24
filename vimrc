""""" vimrc
"
" These are my settings for vim.
"
"""""

set nocompatible " vim or gtfo
syntax on " turn on syntax highlighting
filetype plugin indent on " turn on plugin and indention for filetype detection
set textwidth=80 " wrap at 80 col or gtfo
set number " display line numbers
set ruler " show the line number and column in the status line
set laststatus=2 " always set the last window to have a status line

set backspace=indent,eol,start

" this could be moved into filestype specific plugins
set tabstop=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the autoindent to be 2 chars
set expandtab " use spaces when pressing tab
set autoindent " autoindents code

""" Handling invisible characters
set list " show invisible characters
set listchars="" " reset list chars
set listchars+=tab:▸\ 
set listchars+=trail:. " display trailing spaces as dots

""" file type specific settings
" go
au! BufNewFile,BufRead *.go setf go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab

" html
" autocmd FileType html set noautoindent
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab

" haxe
au! BufNewFile,BufRead *.hx setf haxe
autocmd FileType haxe set tabstop=4|set shiftwidth=4|set noexpandtab

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
