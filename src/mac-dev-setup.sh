

# 
EMAIL=oli.olafsson@getweave.com
ssh-keygen -t ed25519 -C ”${EMAIL}”
cat ~/.ssh/id_ed25519.pub      # <— take the output and create a new ssh key in github.com/settings/keys

# add config file
mkdir -p ~/.ssh
touch ~/.ssh/config

echo "Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config

# ensure a codebase dir
CODEBASE=${HOME}/weave
mkdir -p ${CODEBASE}


# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh )”

# fish
brew install fish

# iterm2
brew install --cask iterm2

# editors
brew install --cask pycharm-ce
brew install --cask goland
brew install --cask visual-studio-code
brew install --cask rstudio

# slack
brew install --cask slack
brew install --cask slack-cli

# browsers
brew install --cask google-chrome
brew install --cask brave-browser

# k8s, docker
brew install kubernetes-cli
brew install --cask docker

brew install openssl readline sqlite3 xz zlib tcl-tk


# languages
brew install pyenv
pyenv install 3.10
pyenv global 3.10
brew install ipython
brew install ruff

brew install git

brew install pyenv-virtualenv
brew install go
brew install r


# apps
brew install --cask tableau-public
brew install gh
brew install postgresql@14

# env
set BB $HOME/go/src/bitbucket.org
mkdir -p $BB
ln -s $BB $HOME/bitbucket.org

set WEAVE $HOME/go/src/weavelab.xyz
mkdir -p $WEAVE
ln -s $WEAVE $HOME/weave


# install and configure fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish



brew install --cask google-cloud-sdk
gcloud auth application-default login


# weave
echo 'export GOPRIVATE=weavelab.xyz/*' >> ~/.zshrc

