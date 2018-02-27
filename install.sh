#!/bin/bash

# Install Vim, setting it as a default text editor
sudo apt-get install vim
sudo update-alternatives --set editor /usr/bin/vim.basic

sudo apt-get install terminator

# Install zsh shell & oh-my-zsh
sudo apt-get install zsh
sudo apt-get install curl
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s `which zsh`

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vim & Zsh configurations
cp .vimrc ../.vimrc
cp .zshrc ../.zshrc 

# Install all vim plugins
vim -c 'PluginInstall' -c 'qa!'

mkdir ~/.vim/colors
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gurvbox.vim

git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts

# Terminator config file. Font, Color, Seperator size
cp terminator_config ~/.config/terminator/config


# Monitor Resolution settings for 1920x1080
resolution_type_dxd=`xdpyinfo | grep -oP 'dimensions:\s+\K\S+'`
com1=$?
resolution_type_d_d=`echo $resolution_type_dxd | grep -oP '\d+'`
com2=$?
modeline=`cvt $resolution_type_d_d | grep -oP 'Modeline \K.+'`
com3=$?

if [ "$com1" = "0" -a "$com2" = "0" -a "$com3" = "0" ]; then
	echo 'xrandr --newmode '"$modeline"'
	xrandr --addmode Virtual1 '"$resolution_type_dxd"'
	xrandr --output Virtual1 --mode '"$resolution_type_dxd" >> ~/.profile
fi
