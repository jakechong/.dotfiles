# Personal .dotfiles

## Mac

- git
- nvim
- zsh
- tmux

## Ubuntu

- nvim
- bash
- tmux

## Arch Linux

- alacritty
- AwesomeWM
- nvim
- tmux

These are my current dotfiles for either Mac or Linux.
To setup on a Mac:
```
# install stow
brew install stow

# run install script
cd mac
source ./install.sh

# run git setup script
source ./mac/git_setup.sh
```

To setup on Ubuntu:
```
# install stow
sudo apt install stow

# run install script
source ./ubuntu/install.sh

# run git setup script
source ./ubuntu/git_setup.sh
```

To setup on Arch:
```
# install stow
sudo pacman -S stow

# run install script
source ./archlinux/install.sh

# run git setup script
source ./archlinux/git_setup.sh
```
