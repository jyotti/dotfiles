#!/usr/bin/env bash

# Homebrew自体をアップデート
brew update

# インストール済みのフォーミュラをアップグレード
brew upgrade

# Use Bash
brew install bash
brew install bash-completion

# IRIサポートのwget
brew install wget --with-iri

# あると便利なやつ
brew install ack
brew install jq
brew install pstree
brwe install git
brew install git-now
brew install tig
brew install pstree

# tmux
brew install tmux
# - tmuxとosでクリップボードを共有するために使う
brew install reattach-to-user-namespace

# Development
brew install pyenv
brew install ruby-build
brew install rbenv
brew install nodebrew
brew install jenv
brew install plenv

# Development at Android
brew install android-sdk
brew install apktool
brew install pidcat

# Install Ricty font - https://github.com/sanemat/homebrew-font
# powerline向けも一緒にインストール
brew tap sanemat/font
brew install ricty --powerline --vim-powerline

# この辺はなくても困らないやつ
# - vagrantのコマンド補完
brew install vagrant-completion

# 古いフォーミュラなど掃除
brew cleanup
