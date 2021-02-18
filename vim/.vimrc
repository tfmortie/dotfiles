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
    " Quickscope
    Plug 'unblevable/quick-scope'
    " NeoSolarized
    Plug 'overcache/NeoSolarized'
    " Gruvbox
    Plug 'morhetz/gruvbox'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Vimwiki
    Plug 'vimwiki/vimwiki'
call plug#end()

" set colorscheme for vim and airline 
set termguicolors

" set colors for quickscope after colorscheme change
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#34ed00' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

"colo peachpuff

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

" allow find to work in subfolders
set path+=**

" set toggle for highlights
nnoremap <C-m> :noh<cr>

" commands for dark/light background
command Blight normal! :set background=light<cr>
command Bdark normal! :set background=dark<cr>

" commands for LaTeX and beamer compilation
command CompileBeamer !pdflatex --shell-escape %;pdflatex --shell-escape %;open %:t:r.pdf;rm *.aux *.log *.nav *.out *.snm *.toc<cr>
command CompileLatex !pdflatex %:t:r.tex;bibtex %:t:r.aux;pdflatex %:t:r.tex;pdflatex %:t:r.tex;open %:t:r.pdf;rm *.blg *.bbl *.aux *.log

" some settings for vimwiki
set nocompatible
filetype plugin on
