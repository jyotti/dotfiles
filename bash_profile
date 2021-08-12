#!/usr/bin/env bash

# XDG Base Directory Specification
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
#export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
#export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=$HOME/.cache
#export XDG_RUNTIME_DIR=

mkdir -p ${XDG_DATA_HOME}
mkdir -p ${XDG_CONFIG_HOME}
mkdir -p ${XDG_CACHE_HOME}
# Development HOME
mkdir -p $HOME/dev

# Homebrew
ARCH=$(uname -m)
if [[ $ARCH == "arm64" ]]; then
  [[ -x "/opt/homebrew/bin/brew" ]] && eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $ARCH == "x86_64" ]]; then
  [[ -x "/usr/local/bin/brew" ]] && eval $(/usr/local/bin/brew shellenv)
fi

# Load the shell dotfiles
for file in ${XDG_CONFIG_HOME}/bash/{path,functions,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Homebrew Shell Completion - https://docs.brew.sh/Shell-Completion#configuring-completions-in-bash
if type brew &>/dev/null; then
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# terraform completion
if type terraform &> /dev/null; then
    complete -C terraform terraform
fi
