"
" MINIMAL SETTINGS
"
set encoding=utf-8
syntax on
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set ai
set relativenumber number
set hlsearch
set ruler

"
" USER-SPECIFIC SETTINGS
"

set path+=** " allow find to work in subfolders
set wildmenu " display all matching files when we tab complete
set cursorline " make sure that our current line is highlighted
set ls=2 " make sure we always have the name of current buffer in status line
set incsearch " incremental search
set scrolloff=8 
set mouse=a " enable mouse scrolling, and other mouse functions

"
" MAPPINGS
"

" remove highlights
nmap <C-m> :noh<cr> 
" buffers
map <C-n> :bn<cr>
map <C-p> :bp<cr>
map <C-x> :bd<cr>
" windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
" turn on/off cursorline
nmap <C-c> :set cursorline!<CR>

"
" COMMANDS
"

command CB !pdflatex --shell-escape "%";pdflatex --shell-escape "%";open %:t:r.pdf;rm *.aux *.log *.nav *.out *.snm *.toc 
command CL !pdflatex %:t:r.tex;bibtex %:t:r.aux;pdflatex %:t:r.tex;pdflatex %:t:r.tex;open %:t:r.pdf;rm *.blg *.bbl *.aux *.log
command MT !ctags -R .

"
" SNIPPETS
"

" Python
" fast variable printing (requires Python >=3.8)
nnoremap ,pprint <S-i>print(f'{<Esc><S-a>=}')<Esc>

"
" PLUGINS
"

call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" 
" COLORSCHEME
"

" settings for airline
let g:airline#extensions#tabline#enabled = 1 " show tabs/buffers on top
let g:airline_theme='one' " theme for airline
let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', 'maxlinenr']) " format statusline section Z

" set color scheme and background color
colorscheme one
set background=dark

" make sure that our current line is highlighted
hi CursorLine cterm=NONE ctermbg=236
