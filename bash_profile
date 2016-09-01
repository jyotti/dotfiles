#!/usr/bin/env bash

# Add `~/bin` to the `$PATH`
if [[ ! -d "$HOME/bin" ]] ; then
  mkdir "$HOME/bin"
fi
export PATH="$HOME/bin:$PATH"

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

# Load the shell dotfiles
for file in ${XDG_CONFIG_HOME}/bash/{functions,bash_prompt,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# macos
if _is_macos; then
  source ${XDG_CONFIG_HOME}/bash/macos
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
