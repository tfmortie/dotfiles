call plug#begin('~/.vim/plugged')

  " Addons
  Plug 'scrooloose/nerdtree'
  Plug 'vim-scripts/vim-auto-save'
  Plug 'airblade/vim-gitgutter'
  Plug 'ervandew/supertab'
  " e.g. cs'" to change ' to "
  Plug 'tpope/vim-surround'
  " e.g. gcc to toggle (un)comment
  Plug 'vim-scripts/tComment'
  Plug 'roman/golden-ratio'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'

  " Syntax errors
  Plug 'vim-syntastic/syntastic'
  " Use :ToggleWhitespace to toggle whitespace indicator
  Plug 'ntpeters/vim-better-whitespace'

  " Toggle with :Goyo, turn off with :Goyo!
  Plug 'junegunn/goyo.vim'

  " Git support
  Plug 'tpope/vim-fugitive'

  " Themes
  Plug 'altercation/vim-colors-solarized'
  Plug 'icymind/NeoSolarized'
  Plug 'morhetz/gruvbox'

  " Features
  Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
