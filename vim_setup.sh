#!/bin/bash

BASE=~/vimtest
BUNDLEDIR=$BASE/.vim/bundle
AUTOLOADDIR=$BASE/.vim/autoload

mkdir -p $BUNDLEDIR
mkdir -p $AUTOLOADDIR

PACKAGES=('tpope/vim-fugitive' 'junegunn/fzf.vim' 'junegunn/fzf' 'scrooloose/nerdtree' 'easymotion/vim-easymotion')

git clone https://github.com/tpope/vim-pathogen && mv $BASE/vim-pathogen/autoload/pathogen.vim $AUTOLOADDIR && rm -rf $BASE/vim-pathogen

for i in "${PACKAGES[@]}"
do
  git clone https://github.com/$i.git $BUNDLEDIR/`echo $i | cut -d'/' -f2`
done

git clone https://github.com/tpope/vim-pathogen && mv $BASE/vim-pathogen/autoload/pathogen.vim $AUTOLOADDIR && rm -rf $BASE/vim-pathogen

