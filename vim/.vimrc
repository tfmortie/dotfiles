"
" VIM settings

" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.vim/.vimrc
endif

" add plugins below
call plug#begin('~/.vim/autoload/plugged')
    " airline statusline
    Plug 'vim-airline/vim-airline'
    " airline themes
    Plug 'vim-airline/vim-airline-themes'
    " NERDTree file explorer
    Plug 'scrooloose/nerdtree'
    " Quickscope
    Plug 'unblevable/quick-scope'
    " NeoSolarized
    Plug 'overcache/NeoSolarized'
    " Gruvbox
    Plug 'morhetz/gruvbox'
call plug#end()

" set colorscheme for vim and airline 
set termguicolors
"colo NeoSolarized
"let g:airline_theme='solarized'
colo gruvbox
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='dark'

" syntax highlight
syntax on

" set background and put comments in green
set background=dark

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
map <C-a> :NERDTree<cr>

" allow find to work in subfolders
set path+=**
