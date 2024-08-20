if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,alacritty,awesome,tmux";
fi

if [[ -z $DOTFILES ]]; then 
  DOTFILES=$HOME/.dotfiles
fi

pushd $DOTFILES/archlinux
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "stow $folder"
  stow -D $folder
  stow -t $HOME $folder
done

popd

