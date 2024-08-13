if [[ -z $STOW_FOLDERS ]]; then
  STOW_FOLDERS="nvim,bash"
fi

if [[ -z $DOTFILES ]]; then 
  DOTFILES=$HOME/.dotfiles
fi

pushd $DOTFILES/linux
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "stow $folder"
  stow -D $folder
  stow -t $HOME $folder
done

echo "Adding bash-powerline.sh to .bashrc"
echo "source $DOTFILES/linux/bash/bash-powerline.sh" >> $DOTFILES/linux/bash/.bashrc

echo "Sourcing .bashrc file"
source $DOTFILES/linux/bash/.bashrc
popd

