#!/bin/bash

BASE=~
BUNDLEDIR=$BASE/.vim/bundle
AUTOLOADDIR=$BASE/.vim/autoload
BACKUPDIR=$BASE/.vim/backups

# Install some binaries
brew update
brew install the_silver_searcher
brew install fzf

mkdir -p $BUNDLEDIR
mkdir -p $AUTOLOADDIR
mkdir -p $BACKUPDIR

PACKAGES=('tpope/vim-fugitive' 'junegunn/fzf.vim' 'junegunn/fzf' 'scrooloose/nerdtree' 'easymotion/vim-easymotion' 'vim-airline/vim-airline' 'MattesGroeger/vim-bookmarks')

git clone https://github.com/tpope/vim-pathogen && mv $BASE/vim-pathogen/autoload/pathogen.vim $AUTOLOADDIR && rm -rf $BASE/vim-pathogen

for i in "${PACKAGES[@]}"
do
  git clone https://github.com/$i.git $BUNDLEDIR/`echo $i | cut -d'/' -f2`
done

