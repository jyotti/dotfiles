#!/usr/bin/env bash

# Add `/usr/local/bin` to the `$PATH`
if [ -d "/usr/local/bin" ] ; then
  export PATH="/usr/local/bin:$PATH"
fi

# Add `~/bin` to the `$PATH`
if [ ! -d "$HOME/bin" ] ; then
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
# Development HOME
mkdir -p $HOME/dev

# Load the shell dotfiles
for file in ${XDG_CONFIG_HOME}/bash/{path,functions,bash_prompt,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Homebrew Shell Completion - https://docs.brew.sh/Shell-Completion
if type brew 2&>/dev/null; then
  for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
    source "$completion_file"
  done
fi

# Bash completion
if which brew &> /dev/null && [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  source $(brew --prefix)/share/bash-completion/bash_completion
fi

# terraform completion
if type terraform &> /dev/null; then
    complete -C terraform terraform
fi
