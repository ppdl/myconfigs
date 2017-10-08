#!/bin/bash
sudo apt-get install vim
sudo update-alternatives --config editor

sudo apt-get install terminator
sudo apt-get install zsh

chsh -s /usr/bin/zsh

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ../.vimrc
cp .zshrc ../.zshrc 

mkdir ~/.vim/colors
cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/gurvbox.vim

git clone https://github.com/powerline/fonts.git --depth=1
./install.sh
rm -rf fonts

