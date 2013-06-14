# commamnd aliases
alias ll='ls -lt'
alias la='ls -lta'
alias rm='rm -i'

export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'

# Vim Kaoriya
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# tmux
alias tmux='tmuxx'
alias tm='tmuxx'
alias tma='tmux attach'
alias tml='tmux list-window'

export PATH=$PATH:~/bin
