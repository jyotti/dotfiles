#!/usr/bin/env bash

# Interactive shell only.
[[ $- != *i* ]] && return

# Fallback when XDG vars are not initialized by profile.
: "${XDG_CONFIG_HOME:=$HOME/.config}"

# Load the shell dotfiles.
for file in ${XDG_CONFIG_HOME}/bash/{path,functions,aliases,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Bash behavior.
shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

# Homebrew shell completion.
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi
