#!/bin/bash

pwd=`dirname $0`

sudo apt-get install -y \
	git \
	screen \
	tree \
	unzip \
  	vim \
  	wget

cp "$pwd/.bash_aliases" ~/.bash_aliases
cp "$pwd/.bash_profile" ~/.bash_profile
cp "$pwd/.gitconfig" ~/.gitconfig

if [ ! -d "$pwd/vimrc" ]; then
	git clone http://github.com/erming/vimrc "$pwd/vimrc"
fi

bash "$pwd/vimrc/install.sh"
