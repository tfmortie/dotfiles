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
    " NERDTree file explorer
    Plug 'scrooloose/nerdtree'
call plug#end()
