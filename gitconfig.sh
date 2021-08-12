#!/usr/bin/env bash

# user
git config --global user.name "Atsushi Nakajo"
git config --global user.email "jyotti@gmail.com"

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

git config --global push.defalut upstream
git config --global pull.rebase true

git config --global alias.s "status"
# statusをコンパクトに
git config --global alias.ss "status --short --branch"

git config --global filter.lfs.clean "git-lfs clean -- %f"
git config --global filter.lfs.smudge "git-lfs smudge -- %f"
git config --global filter.lfs.required true
git config --global filter.lfs.process "git-lfs filter-process"

git config --global --replace-all url.git@github.com:.pushInsteadOf "https://github.com/" "git://github.com/"

git config --global ghq.root "~/dev/src"
