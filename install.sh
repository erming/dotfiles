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
# The install will create ~/.vim/ and ~/.vimrc
bash "$pwd/vimrc/install.sh"

cp "$pwd/bash_aliases" ~/.bash_aliases
cp "$pwd/bash_profile" ~/.bash_profile
cp "$pwd/gitconfig" ~/.gitconfig

echo ""
echo "Install complete!"
echo "Please reload your session."
echo ""
