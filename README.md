# dotfiles

## Overview

- Shell: Bash
- Terminal: tmux, [Powerline](https://github.com/powerline/powerline)

## Installation

### Prerequisites

- Command Line Tools (CLT) for Xcode `xcode-select --install`
- [Homebrew](https://brew.sh/)

### Install formulae and dotfiles

Install formula with Hombrew-bundle

```bash
brew bundle
```

Install dotfiles

```bash
. bootstrap.sh
```

### Python

Use homebrew's python, pyenv when you want to build arbitrary version.

Install Powerline(pip3)

```bash
pip3 install -f requirements.txt
```

### Python2

Install virtualenv(pip2)

```bash
pip2 install -f requirements-pip2.txt
```

## Thanks
https://github.com/mathiasbynens/dotfiles
