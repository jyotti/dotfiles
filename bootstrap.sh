#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
  rsync --include ".bashrc" --include ".bash_profile" --include ".functions" --include ".path" \
    --include ".bash_prompt" --include ".exports" --include ".aliases" \
    --include ".inputrc" --include ".osx" --include ".tmux.conf" \
    --include ".vimrc" --include ".vim" \
    --exclude "*" --exclude "*/" \
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

[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && vim -c ':NeoBundleInstall'
[ ! -d ~/.vim/undo ] && mkdir -p ~/.vim/undo
unset doIt
