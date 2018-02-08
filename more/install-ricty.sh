#!/usr/bin/env bash
# https://github.com/sanemat/homebrew-font

brew tap sanemat/font
brew install ricty --with-powerline
cp -f $(brew --prefix)/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf ~/Library/Fonts/
