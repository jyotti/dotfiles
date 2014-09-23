#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
        rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
                --exclude "README.md" --exclude "LICENSE.txt" --exclude "*.swp" --exclude "Brewfile" --exclude "Caskfile" --exclude "Gemfile.*" --exclude "*.bak" --exclude "git/" -av --no-perms . ~
        cp git/gitignore ~/.gitignore
        cp git/gitconfig ~/.gitconfig

        source ~/.bash_profile
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
