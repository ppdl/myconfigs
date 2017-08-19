
#************************************#
#YoungJae's ubuntu VIM configurations#
# Made it during Australia vacation! #
#************************************#

Last Update: 19 Aug 2017

###CAUTION###
Before apply this files, it'd be better to backup your original configurations
It can override your config files such as zshrc, vimrc, etc...

###Included Files###
1) .zshrc setting (shell theme)
	- you should change host name in line5 path

2) .vimrc setting (vim configs)
3) syntastic.vim  (if use Syntastic, put this in ~/.vim/bundle/syntastic/plugin/)


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
	d. and, apply the font

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

# Paste 
1) F2			: Paste On/Off

# Plugins	   
1) PluginList 	: show plugin list
2) PluginInstal : install all plugins in the list

# toggle a plugin
1) F8 			: Tagbar				(project navigator)
2) leader + n,e : NERDTree				(file explorer)
3) Ctrl + w,e 	: Syntastic				(Syntax checker)

# switch buffers
1) leader + a 	: move to left buffer
2) leader + s 	: move to right buffer
3) leader + [N]	: move to [N]th buffer. [N] can be 1~9
4) leader + w	: close the current tab
5) Ctrl + w,w 	: toggle splitted window





