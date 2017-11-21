tap "homebrew/bundle"
tap "homebrew/services"
tap "caskroom/cask"
brew "brew-cask-completion"
tap "caskroom/versions"

# Use Bash
brew "bash"
brew "bash-completion@2" #for Bash 4.1+

# core
brew "openssl"

# GNU libs
brew "coreutils", args: ["with-gmp"]
brew "gnu-tar"
brew "gnu-sed", args: ["with-default-names"]
brew "findutils"
brew "make"
brew "grep", args: ["with-default-names"]
brew "gzip"
# More utils
brew "wget", args: ["with-iri"]
brew "tree"
brew "curl"
brew "pstree"
brew "gettext"
brew "the_silver_searcher"
brew "jq"
brew "reattach-to-user-namespace"
brew "unzip"
brew "nkf"
brew "less"

# for Git
brew "git"
brew "git-now"
brew "hub"
brew "tig"

brew "tmux"
brew "macvim", args: ["with-lua", "with-override-system-vim", "with-python3", "without-python"]

# developments
cask "java"
cask "caskroom/versions/java8"
cask "caskroom/versions/zulu7" #Use zulu7 instead of java 7 - https://github.com/caskroom/homebrew-versions/pull/3914#issuecomment-321538649
brew "pyenv"
brew "pyenv-virtualenv"
brew "pip-completion"
brew "ruby-build"   #depends on rbenv
brew "rbenv"
brew "jenv"
brew "plenv"
brew "node-build"   #depends on nodenv
brew "nodenv"
brew "direnv"
brew "go"

# Go modules
brew "ghq"
brew "glide"
brew "peco"

# Ricty - https://github.com/sanemat/homebrew-font
tap "sanemat/font"
brew "fontforge"
brew "sanemat/font/ricty", args: ["with-powerline"]

cask "google-chrome"
cask "slack"
cask "visual-studio-code"
cask "cheatsheet"

# https://github.com/sindresorhus/quick-look-plugins
cask "qlcolorcode"
cask "qlstephen"
cask "qlmarkdown"
cask "quicklook-json"
cask "qlprettypatch"
cask "quicklook-csv"
cask "betterzipql"
cask "qlimagesize"
cask "webpquicklook"
cask "suspicious-package"
cask "quicklookase"
cask "qlvideo"

cask "docker"
brew "docker-completion"
brew "docker-machine-completion"
brew "docker-compose-completion"
cask "caskroom/versions/google-chrome-canary"
cask "virtualbox"
cask "vagrant"
brew "vagrant-completion"
