# dotfiles

Personal dotfiles for macOS.

Default shell: zsh

## Setup

```bash
xcode-select --install
brew bundle
bash bootstrap.sh
```

## Git Config

```bash
GIT_USER_NAME="Your Name" \
GIT_USER_EMAIL="you@example.com" \
bash gitconfig.sh
```

## Local Overrides

Machine-local shell settings can live outside this repo:

```bash
~/.config/zsh/local
~/.config/bash/local
```
