#!/usr/bin/env bash
# script stolen directly from https://github.com/hashrocket/dotmatrix/blob/master/bin/vimbundles.sh
#   modified to work with my .vim directory structure

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle scrooloose syntastic
get_bundle vim-ruby vim-ruby
#get_bundle ervandew supertab

vim -c 'call pathogen#helptags()|q'

