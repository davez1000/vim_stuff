#!/bin/bash

BASE=~
BUNDLEDIR=$BASE/.vim/bundle
AUTOLOADDIR=$BASE/.vim/autoload

# Install some binaries
brew update
brew install the_silver_searcher
brew install fzf

mkdir -p $BUNDLEDIR
mkdir -p $AUTOLOADDIR

PACKAGES=('tpope/vim-fugitive' 'junegunn/fzf.vim' 'junegunn/fzf' 'scrooloose/nerdtree' 'easymotion/vim-easymotion' 'vim-airline/vim-airline')

git clone https://github.com/tpope/vim-pathogen && mv $BASE/vim-pathogen/autoload/pathogen.vim $AUTOLOADDIR && rm -rf $BASE/vim-pathogen

for i in "${PACKAGES[@]}"
do
  git clone https://github.com/$i.git $BUNDLEDIR/`echo $i | cut -d'/' -f2`
done

