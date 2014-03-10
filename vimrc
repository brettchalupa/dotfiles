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

" this could be moved into filestype specific plugins
set tabstop=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the autoindent to be 2 chars
set expandtab " use spaces when pressing tab
set autoindent " autoindents code

""" file type specific settings
" go
au! BufNewFile,BufRead *.go setf go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab

au BufRead,BufNewFile *.md,*.markdown,*.mdown set filetype=text
