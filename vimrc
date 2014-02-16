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
set backspace=indent,eol,start " allow backspace
set ruler " show line number and column in the status line
set laststatus=2 " set the last window to always have a status line
set pastetoggle=<F2> " toggle paste mode with F2

""" Search
set hlsearch " turn on highlighting for search results with /
set ignorecase " do not care about case when searching with /

set shell=/bin/sh " ensure vim always runs from a shell

""" NERDTree settings
" map NERDTree toggle to Ctrl + n
map <C-n> :NERDTreeToggle<CR>

""" Handling invisible characters
set list " show invisible characters
set listchars="" " reset list chars
set listchars+=tab:+\ 
set listchars+=trail:. " display trailing spaces as dots

" solarized light color settings
set background=light
colorscheme solarized

" map jj to escape
imap jj <Esc>

filetype on " enable filetype detection
filetype indent on " enable filetype-specific indenting
filetype plugin on " enable filetype-specific plugins

" turn of folding for vim markdown
let g:vim_markdown_folding_disabled=1

""" file type specific settings
" go
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab


" Highlight words to avoid in tech writing
" =======================================
"
"   obviously, basically, simply, of course, clearly,
"   just, everyone knows, However, So, easy

"   http://css-tricks.com/words-avoid-educational-writing/

highlight TechWordsToAvoid ctermbg=red ctermfg=white
function MatchTechWordsToAvoid()
  match TechWordsToAvoid /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\)\>/
endfunction
autocmd FileType markdown call MatchTechWordsToAvoid()
autocmd BufWinEnter *.md call MatchTechWordsToAvoid()
autocmd InsertEnter *.md call MatchTechWordsToAvoid()
autocmd InsertLeave *.md call MatchTechWordsToAvoid()
autocmd BufWinLeave *.md call clearmatches()
