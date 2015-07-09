#!/bin/bash

pwd=`dirname $0`

echo "Installing..."

sudo apt-get install -y -qq \
	git \
	screen \
	tree \
	unzip \
  	vim \
  	wget

if [ ! -d ~/.vim/ ]; then
	mkdir ~/.vim/
fi

cp "$pwd/.bash_aliases" ~/.bash_aliases
cp "$pwd/.bash_profile" ~/.bash_profile
cp "$pwd/.gitconfig" ~/.gitconfig
cp "$pwd/.screenrc" ~/.screenrc
cp -r "$pwd/.vim/autoload" "$pwd/.vim/bundle" "$pwd/.vim/colors" ~/.vim/
cp "$pwd/.vimrc" ~/.vimrc

echo "Done."
