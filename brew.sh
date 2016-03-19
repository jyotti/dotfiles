#!/usr/bin/env bash

# Homebrew自体をアップデート
brew update

# インストール済みのフォーミュラをアップグレード
brew upgrade

# Use Bash
brew install bash
brew install bash-completion

# GNU core utilities
brew install coreutils

# IRIサポートのwget
brew install wget --with-iri

# あると便利なやつ
brew install tree
brew install the_silver_searcher
brew install jq
brew install git
brew install git-now
brew install tig
brew install curl
brew install pstree
# macvim
brew install macvim --with-lua
brew linkapps macvim

# tmux
brew install tmux
# - tmuxとosでクリップボードを共有するために使う
brew install reattach-to-user-namespace

# Development
brew install pyenv
brew install pyenv-virtualenv
brew install ruby-build
brew install rbenv
brew install nodebrew
brew install jenv
brew install plenv
brew install direnv

# Development at Android
brew install android-sdk
brew install apktool
brew install pidcat

# taps
brew tap homebrew/completions
brew tap homebrew/versions

# Install Ricty font - https://github.com/sanemat/homebrew-font
# powerline向けも一緒にインストール
brew tap sanemat/font
brew install ricty --powerline --vim-powerline

# completion!
brew install vagrant-completion
brew install brew-cask-completion
brew install docker-completion
brew install docker-machine-completion
brew install pip-completion

# 古いフォーミュラなど掃除
brew cleanup
