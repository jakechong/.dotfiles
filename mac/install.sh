if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,zsh";
fi

if [[ -z $DOTFILES]]; THEN
  DOTFILES=$HOME/.dotfiles
fi

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  mac_folder=mac/$folder
  echo "stow $mac_folder"
  stow -D $mac_folder
  stow $mac_folder
done
popd
