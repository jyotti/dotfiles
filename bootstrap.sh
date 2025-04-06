#!/usr/bin/env bash

cd "$(dirname "$BASH_SOURCE")" || exit 1

cat << EOF
        ∧__∧
      （  ´∀｀）
      (  O┬O
≡◎-ヽJ┴◎     ---${BASH_SOURCE}---

EOF

if [[ ! "$1" == "--force" ]] && [[ ! "$1" == "-f" ]]; then
  read -n 1 -r -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " yesno
  echo "";
  if [[ ! "$yesno" =~ ^[Yy]$ ]]; then
    exit
  fi
fi

dotfiles=(
  bashrc
  bash_profile
  inputrc
)

echo -e "\n=====> Copy dotfiles to HOME ..."
for f in "${dotfiles[@]}"; do
  cp -v "${f}" "${HOME}/.${f}"
done

echo -e "\n=====> Copy other files to XDG_CONFIG_HOME ..."
mkdir -p "${HOME}"/.config
cp -rv config/*      "${HOME}"/.config/

exec $SHELL
