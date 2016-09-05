#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

cat << EOF
        ∧__∧
      （  ´∀｀）
      (  O┬O
≡◎-ヽJ┴◎     ---${BASH_SOURCE}---

EOF

function doIt() {
  # sync dotfiles
  for file in $(ls {bashrc,bash_profile,inputrc}); do
    cp ${file} ~/.${file}
  done
  unset file
  cp -r config/* ~/.config/
  # vim
  cp vimrc ~/.vimrc
  # tmux
  cp .tmux.conf ~/

  source ~/.bashrc
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi

unset doIt
