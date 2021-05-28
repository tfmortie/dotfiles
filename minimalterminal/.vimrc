"
" Minimal settings
"

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set relativenumber
set number
set hlsearch
set ruler
colorscheme peachpuff
highlight Comment ctermfg=green

"
" User-specific settings
" 

set path+=** " allow find to work in subfolders
set wildmenu " display all matching files when we tab complete
set cursorline " make sure that our current line is highlighted
" customize cursorline
hi CursorLine cterm=NONE ctermbg=236 ctermfg=white 

"
" Mappings
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
nmap <C-h> :set cursorline!<CR>

"
" Commands
"

command CB !pdflatex --shell-escape %;pdflatex --shell-escape %;open %:t:r.pdf;rm *.aux *.log *.nav *.out *.snm *.toc 
command CL !pdflatex %:t:r.tex;bibtex %:t:r.aux;pdflatex %:t:r.tex;pdflatex %:t:r.tex;open %:t:r.pdf;rm *.blg *.bbl *.aux *.log
command MT !ctags -R .
