"
" VIM settings
"

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

" set mapping for tabs
map <C-n> :bn<cr>
map <C-p> :bp<cr>
