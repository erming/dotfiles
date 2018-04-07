#!/bin/bash

pwd=`dirname $0`

sudo apt-get install -y -qq \
	git \
	screen \
	tree \
	unzip \
  	vim \
  	wget

cp "$pwd/.bash_profile" ~/.bash_profile
cp "$pwd/.gitconfig" ~/.gitconfig
cp "$pwd/.vimrc" ~/.vimrc

timedatectl set-timezone Europe/Stockholm

echo "Done."
