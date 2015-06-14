#!/bin/bash
pwd=`dirname $0`

sudo apt-get install -y \
  git \
  screen \
  tree \
  unzip \
  vim \
  wget

if [ ! -d "$pwd/vimrc" ]; then
  git clone http://github.com/erming/vimrc "$pwd/vimrc"
fi

# Install vimrc
bash "$pwd/vimrc/install.sh"

cp "$pwd/files/bash_aliases" ~/.bash_aliases
cp "$pwd/files/bash_profile" ~/.bash_profile
cp "$pwd/files/gitconfig" ~/.gitconfig

# Force reload
function load() {
  source ~/.bash_profile
}
load
unset load
