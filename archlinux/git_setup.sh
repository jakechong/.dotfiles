# Setup git config with account

gitsetup() {
  git config --global push.default current

  echo "What is your git name?"
  read $GIT_NAME
  git config --global user.name $GIT_NAME

  echo "What is your git email?"
  read $GIT_EMAIL
  git config --global user.email $GIT_EMAIL

  echo "Setting up ssh-keys..."
  ssh-keygen -t rsa -C "$GIT_EMAIL"

  echo "Starting ssh-agent"
  eval "$(ssh-agent -s)"

  echo "Adding ssh key..."
  ssh-add ~/.ssh/id_rsa

  echo "Copying public key from ~/.ssh/id_rsa.pub to clipboard..."
  xsel --clipboard --input < ~/.ssh/id_rsa.pub

  git config --global diff.algorithm patience
  git config --global diff.colorMoved default
}

# download xsel clipboard
sudo apt install xsel

# setup git
gitsetup
