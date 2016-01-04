# Add `~/bin` to the `$PATH`
if [[ ! -d "$HOME/bin" ]] ; then
  mkdir "$HOME/bin"
fi
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{functions,path,bash_prompt,exports,aliases,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# osx?
_isdarwin && source ~/.osx

# pyenv
if _type pyenv; then
  export PYENV_ROOT=/usr/local/var/pyenv
  export PATH="$PYENV_ROOT/shims:$PATH"
  eval "$(pyenv init -)"
fi

# rbenv
if _type rbenv; then
  export RBENV_ROOT=/usr/local/var/rbenv
  eval "$(rbenv init -)"
  # use chefdk ?  [[ -d "/opt/chefdk/bin" ]] && export PATH="/opt/chefdk/bin:$PATH"
fi

# jenv
if _type jenv ; then
  export JENV_ROOT=/usr/local/opt/jenv
  eval "$(jenv init -)"
fi

# plenv
if _type plenv; then
  export PLENV_ROOT=/usr/local/opt/plenv
  eval "$(plenv init -)"
fi

# nodebrew
if _type nodebrew; then
  export NODEBREW_ROOT=/usr/local/var/nodebrew
  export PATH=$NODEBREW_ROOT/current/bin:$PATH
fi

# sdkman
if [[ -f "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  . "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# direnv
if _type direnv; then
  eval "$(direnv hook bash)"
fi

# Android-SDK
if [[ -d "/usr/local/opt/android-sdk" ]]; then
  export ANDROID_HOME=/usr/local/opt/android-sdk
fi
