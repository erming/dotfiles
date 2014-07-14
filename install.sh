#!bin/bash
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
	bash "$pwd/vimrc/install.sh"
fi

cp "$pwd/files/bash_aliases" ~/.bash_aliases
cp "$pwd/files/gitconfig" ~/.gitconfig

f=~/.bashrc
if ! grep -q "screen -ls" $f; then
	echo "screen -ls" >> $f
	source $f
fi
