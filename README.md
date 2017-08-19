
#************************************#
#YoungJae's ubuntu VIM configurations#
# Made it during Australia vacation! #
#************************************#

Last Update: 19 Aug 2017

###Files###
* .zshrc setting (shell theme)
	- you should change host name in line5 path

* .vimrc setting (vim configs)
* syntastic.vim  (if use Syntastic, put this in ~/.vim/bundle/syntastic/plugin/)


###Zsh Environment Setting###
1) install Zsh shell
	a. sudo apt-get install zsh
	b. chsh -s 'which zsh' (changes main shell from bash to zsh)

2) install Oh-my-zsh (Optional)
	a. curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

3) install a Powerline-patched font
	a. git clone https://github.com/powerline/fonts.git --depth=1
	b. ./install.sh
	c. rm -rf fonts
	d. and, set the font

###Installed VIM Plugins###
1) Vundle		: Plugin installer
2) Airline		: Status bar
3) DelimitMate	: Parenthesis autocloser
4) Syntastic	: Syntax checker
5) Gruvbox		: Vim theme
6) NERDTree		: File explorer
7) Tagbar		: Project navigator

###VIM command###
* leader key: ,

# Plugins	   
1) PluginList 	: show plugin list
2) PluginInstal : install all plugins in the list

# toggle a plugin
1) F8 			: Tagbar				(project navigator)
2) leader + n,e : NERDTree				(file explorer)
3) Ctrl + w,e 	: Syntastic				(Syntax checker)

# switch buffers
1) leader + q 	: move to left buffer
2) leader + w 	: move to right buffer
3) Ctrl + w,w 	: toggle splitted window





