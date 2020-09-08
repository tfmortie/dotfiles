"
" VIM settings


" set colorscheme + syntax highlighting
colo peachpuff
syntax on

" TAB -> 4 spaces (identation)
set tabstop=4 shiftwidth=4 expandtab ai

" highlight search matches
set hlsearch

" show line numbers at left of window + ruler with line and columnnumber
set number ruler

" make sure that backspace can be used on most of systems
set backspace=indent,eol,start

" show command history
set showcmd

" set background and put comments in green
set background=dark
highlight Comment ctermfg=green

" enable mouse in case of emergency 
set mouse=a

" set mapping for buffers
map <C-n> :bn<cr>
map <C-p> :bp<cr>
map <C-x> :bd<cr>

" set mapping for windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" highlight current line (left)
set cursorline
hi cursorline cterm=none term=none

" set relative numbers 
set relativenumber

" set mapping for NERDTree
map <C-b> :NERDTree<cr>

" allow find to work in subfolders
set path+=**
