#!/usr/bin/env zsh

# Interactive shell only.
[[ -o interactive ]] || return

# Fallback when XDG vars are not initialized by profile.
: "${XDG_CONFIG_HOME:=$HOME/.config}"

# Load zsh settings.
for file in "$XDG_CONFIG_HOME"/zsh/{path,functions,aliases,exports}; do
  [[ -r "$file" && -f "$file" ]] && source "$file"
done
unset file

# Completion.
autoload -Uz compinit
compinit
