""""" vimrc
"
" These are my settings for vim.
"
"" OTF - On The Fence
" Settings with OTF are ones I am not sure if I want to have stick around
"
"""""

" enable pathogen
execute pathogen#infect()
syntax enable " enable syntax highlighting
set hidden " opening a new buffer sets the current one to be hidden
set t_Co=256 " enable 256 color support
set textwidth=80 " set the textwidth char to wrap at
set ts=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the shiftwidth to be 2 chars
set number " display line numbers
set expandtab " use spaces when pressing tab
set autoindent " OTF - autoindents code
set noswapfile " OTF - turn off swap files
color twilight256 " use the twilight256 theme

" map jj to escape
imap jj <Esc>

filetype on " enable filetype detection
