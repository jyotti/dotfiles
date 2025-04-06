#!/usr/bin/env bash

# XDG Base Directory Specification
# https://specifications.freedesktop.org/basedir-spec/latest/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

mkdir -p ${XDG_CONFIG_HOME}
mkdir -p ${XDG_CACHE_HOME}
mkdir -p ${XDG_DATA_HOME}
mkdir -p ${XDG_STATE_HOME}

# Development HOME
mkdir -p $HOME/dev/bin

# Detect system architecture
ARCH=$(uname -m)
if [[ $ARCH == "arm64" ]]; then
  [[ -x "/opt/homebrew/bin/brew" ]] && eval $(/opt/homebrew/bin/brew shellenv)
fi

# Load the shell dotfiles
for file in ${XDG_CONFIG_HOME}/bash/{path,functions,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# パス展開時に大文字小文字を区別しない。
shopt -s nocaseglob
# Bashの履歴がセッション間で上書きされず、追記される。
shopt -s histappend
# "cd /usr/locl" とタイプミスしても、自動で "cd /usr/local" に補正される。
shopt -s cdspell

# Vim
#export VIMINIT='source $XDG_CONFIG_HOME/vim/vimrc'

# Homebrew Shell Completion - https://docs.brew.sh/Shell-Completion#configuring-completions-in-bash
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi