#!/bin/bash
pwd=`dirname $0`

sudo apt-get install -y \
	git \
	ranger \
	screen \
	tree \
	unzip \
	vim \
	wget

if [ ! -d "$pwd/vimrc" ]; then
	git clone http://github.com/erming/vimrc "$pwd/vimrc"
fi

# Install vimrc.
# The install will create your ~/.vim/ and ~/.vimrc
bash "$pwd/vimrc/install.sh"

cp "$pwd/bash_aliases" ~/.bash_aliases
cp "$pwd/gitconfig" ~/.gitconfig

# Force reload.
source ~/.bash_aliases

f=~/.bashrc
if ! grep -q "screen -ls" $f; then
	echo "screen -ls" >> $f
	source $f
fi
