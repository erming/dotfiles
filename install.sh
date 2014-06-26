#!bin/bash
pwd=`dirname $0`

sudo apt-get install -y \
	git \
	screen \
	tree \
	unzip \
	wget

if [ ! -d ~/vimrc/ ]; then
	git clone http://github.com/erming/vimrc ~/vimrc/
	bash ~/vimrc/install.sh
fi

cp "$pwd/files/bash_aliases" ~/.bash_aliases
cp "$pwd/files/gitconfig" ~/.gitconfig
