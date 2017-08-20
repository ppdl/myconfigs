
#************************************#
#YoungJae's Ubuntu VIM configurations#
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
1) Vundle		 : Plugin installer
2) Airline		 : Status bar
3) DelimitMate	 : Parenthesis autocloser
4) Syntastic	 : Syntax checker
5) Gruvbox		 : Vim theme
6) NERDTree		 : File explorer
7) Tagbar		 : Project navigator
8) YouCompleteMe : Autocompleter
 ***Prerequsites For YCM***
	-(!Notice) Because this Plugin has quite big repo, there can be a problem during installation.
	 In this case, use under 'git clone' command
	  *git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe

	-(!Optional) Befor using it, it would better install libclang to maximize utility of this Plugin
	  a)Add the archive signature
	    *wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
	  b)Add the PPA
	    *sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main"
		*sudo apt-get update
	  c)Allow the Repository to reload and then run the following command
	    *sudo apt-get install clang-3.9 lldb-3.9
	
	-After installation, follow this
	  *cd ~/.vim/bundle/YouCompleteMe
	  *git submodule update --init --recursive
	  *./install.sh --clang-completer
	
	-You should need ycm_extra_conf.py. The link is below. Copy&paste it to ~/.vim/.ycm_extra_conf.py
	  *https://github.com/Valloric/ycmd/blob/master/cpp/ycm/.ycm_extra_conf.py

	-Whole procedures are...
	 http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/

9) Ctrlp		 : file searcher

###VIM command###
* leader key: ,

# Paste mode 
1) F2			: Paste On/Off

# Plugins	   
1) PluginList 	: show plugin list
2) PluginInstal : install all plugins in the list

# toggle a plugin
1) F8 			: Tagbar				(project navigator)
2) leader + n,e : NERDTree				(file explorer)
3) Ctrl + w,e 	: Syntastic				(Syntax checker)

# buffer command
1) leader + a 	: move to left buffer
2) leader + s 	: move to right buffer
3) leader + [N]	: move to [N]th buffer. [N] can be 1~9
4) leader + w	: close the current tab
5) Ctrl + w,w 	: toggle splitted window
6) Ctrl + p		: search files
