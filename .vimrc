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
set guicursor=a:blinkon100 " blinking cursor

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

" fast variable printing Python >=3.8
nnoremap ,pprint <S-i>print(f'{<Esc><S-a>=}')<Esc>
" fast variable printing C++
nnoremap ,cprint ^v$hyistd::cout << "<Esc>pa=" << <Esc><S-a> << std::endl;<Esc>

"
" PLUGINS
"

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf for vim
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " better syntax highlighting
call plug#end()

"
" SETTINGS PLUGINS
"

" set mapping for files
nmap <space>f :Files<CR>
" set mapping for buffers
nmap <space>b :Buffers<CR>
" set mapping for lines
nmap <space>m :Lines<CR>
" set mapping for (current) buffer lines
nmap <space>l :BLines<CR>

" settings for nvim-treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true
    }   
}
EOF

" 
" COLORSCHEME
"

" settings for airline
let g:airline#extensions#tabline#enabled = 1 " show tabs/buffers on top
let g:airline_theme='gruvbox' " theme for airline
let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', 'maxlinenr']) " format statusline section Z
" set color scheme and background color
set background=dark
set termguicolors
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
