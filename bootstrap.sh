#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
  rsync --include ".bashrc" --include ".bash_profile" --include ".functions" --include ".path" \
    --include ".bash_prompt" --include ".exports" --include ".aliases" \
    --include ".inputrc" --include ".osx" --include ".tmux.conf" \
    --include ".vimrc" --include ".vim/***" \
    --exclude "*" \
    -av --no-perms . ~

  source ~/.bashrc
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi

if [[ ! -e ~/.vim/bundle ]]; then
  echo 'vim/bundle directory not found. make directory and git clone ... '
  mkdir -p ~/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  vim -c ':NeoBundleInstall'
fi
if [[ ! -e ~/.vim/undo ]]; then
  mkdir -p ~/.vim/undo
fi
#[ ! -e ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && vim -c ':NeoBundleInstall'
#[ ! -e ~/.vim/undo ] && mkdir -p ~/.vim/undo
unset doIt
