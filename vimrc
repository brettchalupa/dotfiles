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
set nocompatible " vim not vi!
syntax enable " enable syntax highlighting
set hidden " opening a new buffer sets the current one to be hidden
set t_Co=256 " enable 256 color support
set textwidth=80 " set the textwidth char to wrap at
set tabstop=2 " set the tab spacing to be 2 chars
set shiftwidth=2 " set the autoindent to be 2 chars
set number " display line numbers
set expandtab " use spaces when pressing tab
set autoindent " OTF - autoindents code
set directory=~/.vimbackup// " set the working directory for swp files
set backupdir=~/.vimbackup// " set the backup directory for backup files

""" Search
set hlsearch " turn on highlighting for search results with /
set ignorecase " do not care about case when searching with /

""" NERDTree settings
" map NERDTree toggle to Ctrl + n
map <C-n> :NERDTreeToggle<CR>

""" Handling invisible characters
set list " show invisible characters
set listchars="" " reset list chars
set listchars+=tab:\ \
set listchars+=trail:. " display trailing spaces as dots

color twilight256 " use the twilight256 theme

" map jj to escape
imap jj <Esc>

filetype on " enable filetype detection
filetype indent on " enable filetype-specific indenting
filetype plugin on " enable filetype-specific plugins
