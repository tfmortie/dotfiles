"
" VIM settings
"

" syntax highlighting
syntax on

" TAB -> 4 spaces (identation)
set tabstop=4 shiftwidth=4 expandtab
set ai

" highlight search matches
set hlsearch

" show line numbers at left of window + ruler with line and columnnumber
set number ruler

" make sure that backspace can be used on most of systems
set backspace=indent,eol,start

" show command history
set showcmd

" comments are green
highlight Comment ctermfg=green
