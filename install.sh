#!/bin/bash

# Install Vim, setting it as a default text editor
sudo apt-get install -y vim
sudo update-alternatives --set editor /usr/bin/vim.basic

sudo apt-get install -y terminator

# Install zsh shell & oh-my-zsh
sudo apt-get install -y zsh
sudo apt-get install -y curl
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo chsh -s `which zsh`

# Gruvbox theme
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim

# Vim configurations
cp .vimrc ../.vimrc

# Terminator config file. Font, Color, Seperator size
mkdir ~/.config/terminator
cp terminator_config ~/.config/terminator/config

# Install all vim plugins
vim -c 'PluginInstall' -c 'qa!'


git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts

# Zsh setting
cp .zshrc ../.zshrc 

# Monitor Resolution setting
resolution_type_dxd=`xdpyinfo | grep -oP 'dimensions:\s+\K\S+'`
com1=$?
resolution_type_d_d=`echo $resolution_type_dxd | grep -oP '\d+'`
com2=$?
modeline=`cvt $resolution_type_d_d | grep -oP 'Modeline \K.+'`
com3=$?
modename=`cvt $resolution_type_d_d | cut -s -d'"' -f 2`
com4=$?

#if [ "$com1" = "0" -a "$com2" = "0" -a "$com3" = "0" ]; then
#	cat ~/.profile | grep xrandr 2>&1 /dev/null
#	if [ $? -ne 0 ]
#	then
#		echo 'xrandr --newmode '"$modeline"'
#		xrandr --addmode Virtual1 '"$resolution_type_dxd"'
#		xrandr --output Virtual1 --mode '"$resolution_type_dxd" >> ~/.profile
#	fi
#fi

echo 'xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync' >> ~/.profile
echo 'xrandr --addmode Virtual1 1920x1080' >> ~/.profile
echo 'xrandr --output Virtual1 --mode 1920x1080' >> ~/.profile

echo '****************************************'
echo '*                                      *'
echo '*      All Settings are completed      *'
echo '* Please restart to apply the settings *'
echo '*                                      *'
echo '****************************************'
