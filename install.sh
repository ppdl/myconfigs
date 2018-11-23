#!/bin/bash

# Install Vim, setting it as a default text editor
sudo apt-get install -y vim
sudo update-alternatives --set editor /usr/bin/vim.basic

sudo apt-get install -y terminator

# Install zsh shell & oh-my-zsh
sudo apt-get install -y zsh
sudo apt-get install -y curl
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# setting login shell
sudo vim -c 'vi /etc/pam.d/chsh' -c '%s/required/sufficient/g' -c 'wq!'
chsh -s `which zsh`
sudo vim -c 'vi /etc/pam.d/chsh' -c '8,8s/sufficient/required/g' -c 'wq!'


# Vim & Zsh configurations
cp .vimrc ../.vimrc
cp .zshrc ../.zshrc 

# Terminator config file. Font, Color, Seperator size
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.config/terminator
cp terminator_config ~/.config/terminator/config

# ctags
sudo apt-get install -y ctags

# Install all vim plugins
vim -c 'PluginInstall' -c 'qa!'

# Gruvbox theme
mkdir ~/.vim/colors
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim

# apply gruvbox theme
sed '1,1s/^.//' .vimrc > ~/.vimrc


git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts


# Monitor Resolution setting
# Below setting routine is device independent,
# but don't know the command that gives the highest supported resolution.
# So I can't implement it yet using shell script.

#resolution_type_dxd=`xdpyinfo | grep -oP 'dimensions:\s+\K\S+'`  # this gives you the current resolution, not the highest resolution.
#com1=$?
#resolution_type_d_d=`echo $resolution_type_dxd | grep -oP '\d+'`
#com2=$?
#modeline=`cvt $resolution_type_d_d | grep -oP 'Modeline \K.+'`
#com3=$?
#modename=`cvt $resolution_type_d_d | cut -s -d'"' -f 2`
#com4=$?

#if [ "$com1" = "0" -a "$com2" = "0" -a "$com3" = "0" ]; then
#	cat ~/.profile | grep xrandr 2>&1 /dev/null
#	if [ $? -ne 0 ]
#	then
#		echo 'xrandr --newmode '"$modeline"'
#		xrandr --addmode Virtual1 '"$resolution_type_dxd"'
#		xrandr --output Virtual1 --mode '"$resolution_type_dxd" >> ~/.profile
#	fi
#fi

#cat ~/.profile | grep xrandr 2>&1 /dev/null
#if [ $? -ne 0 ]
#then
#	echo 'xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync' >> ~/.profile
#	echo 'xrandr --addmode Virtual1 1920x1080' >> ~/.profile
#	echo 'xrandr --output Virtual1 --mode 1920x1080' >> ~/.profile
#fi

echo '****************************************'
echo '*                                      *'
echo '*      All Settings are completed      *'
echo '* Please restart to apply the settings *'
echo '*                                      *'
echo '****************************************'
