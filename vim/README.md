# VIM

## Installation

1) Clone repo to your home directory

```
git clone https://github.com/tfmortie/dotfiles.git
```

2) Create symbolic links and you're done!

```
ln -s vim .vim
ln -s vim/.vimrc .vimrc
```

**Important**: depending on your OS, vim can give errors such as

```
Error detected while processing ~/.vimrc:
line   33:
E474: Invalid argument: listchars=extends:�~F~R
line   34:
E474: Invalid argument: listchars+=precedes:�~F~P
line   75:
E518: Unknown option: termguicolors
```
For the last error you'll most likely need to comment out line 75, whereas for the first two errors just make sure to add the following lines to the beginning of your *.vimrc* file: 

```
scriptencoding utf-8
set encoding=utf-8
```
