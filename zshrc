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

# Machine-local overrides. Keep this file outside the dotfiles repo.
if [[ -r "$XDG_CONFIG_HOME/zsh/local" && -f "$XDG_CONFIG_HOME/zsh/local" ]]; then
  source "$XDG_CONFIG_HOME/zsh/local"
fi

# Completion.
autoload -Uz compinit
compinit

# 補完時に大文字小文字を無視
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# 補完候補が複数でも即表示
setopt AUTO_LIST

# 補完時のベル無効
setopt NO_BEEP

# パス展開で大文字小文字を区別しない
setopt NO_CASE_GLOB

# 入力済みprefixで履歴検索（↑/↓）
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# 補完候補に色
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
