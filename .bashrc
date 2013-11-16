# commamnd aliases
alias ll='ls -l'
alias la='ls -la'
alias rm='rm -i'

# local bin
export PATH=$PATH:~/bin
export _JAVA_OPTIONS='-Dfile.encoding=UTF-8'

# Vim Kaoriya
##export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
##alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
##alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# HomeBrew
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
## brew installs
### bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/jyotti/.gvm/bin/gvm-init.sh" ]] && source "/Users/jyotti/.gvm/bin/gvm-init.sh"
