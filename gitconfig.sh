#!/usr/bin/env bash

# user
if [[ -n "${GIT_USER_NAME:-}" ]]; then
  git config --global user.name "${GIT_USER_NAME}"
fi
if [[ -n "${GIT_USER_EMAIL:-}" ]]; then
  git config --global user.email "${GIT_USER_EMAIL}"
fi

git config --global credential.helper osxkeychain

# core
git config --global core.editor vim
# $XDG_CONFIG_HOME/git/ignore
# git config --global core.excludesfile ~/.gitignore
git config --global core.precomposeUnicode true
git config --global core.autocrlf input

# init
git config --global init.defaultBranch main

# color
git config --global color.ui true

# merge
git config --global merge.tool vimdiff
git config --global merge.ff true

git config --global push.default simple
git config --global pull.rebase true

git config --global alias.s "status"
# statusをコンパクトに
git config --global alias.ss "status --short --branch"

git config --global ghq.root "$HOME/dev/src"
