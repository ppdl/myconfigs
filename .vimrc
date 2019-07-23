colorscheme gruvbox
:hi Search guibg=red

set t_Co=256

" Syntax Highlighting
if has("syntax")
	syntax on
endif

" General setting
set fileencodings=utf8,euc-kr
scripte utf-8
set nocp
set all&
set autoindent
set cindent
set smartindent
set hi=100
set bs=indent,eol,start
set fenc=utf-8
set fencs=utf-8,cp949,euc-jp,shift-jis,big5,ucs-2le,latin1
set ru
set sc
set nu
set nuw=5
set ts=4
set sw=4
set noet
set sts=0
set nowrap
set sm
set showmatch
set mouse=an
set sidescroll=1
set title
set hidden

" Key Settings
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
execute "set <M-1>=\e1"
inoremap <M-1> <c-o>:w<CR>
nnoremap <M-1> :w<CR>
execute "set <M-2>=\e2"
inoremap <M-2> <c-o>:q<CR>
nnoremap <M-2> :q<CR>
"inoremap <F3> <c-o>:w<CR>
"nnoremap <F3> :w<CR>
"inoremap <F4> <c-o>:q<CR>
"nnoremap <F4> :q<CR>

let mapleader = ","
nnoremap <leader>a :bp<CR>
nnoremap <leader>s :bn<CR>
nnoremap <leader>w :bd<CR>
for i in range(1,10)
	execute "nnoremap \<leader>".i." :b".i."<CR>"
endfor

" resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>
 
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>


" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" Keep Plugin commands between vundle#begin/end.

" vim-C++ syntax highlighter
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'kien/ctrlp.vim'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"let g:airline#extensions#tabline#enabled = 0 "turn off buffer list
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
"let g:airline_solarized_bg='dark'
set laststatus=2 " turn on bottom bar"

" vim-delimitMate
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr=1
let delimitMate_disabled_matchpairs = '<:>'

" vim-Syntastic
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>

 
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_c_compiler_options = "-std=c11 -Wall -Wextra -Wpedantic"

" vim-Gruvbox
Plugin 'morhetz/gruvbox'
set background=dark
let g:gruvbox_contrast_dark = "high"
let g:gruvbox_color_column="aqua"

" vim NERD tree
Plugin 'scrooloose/nerdtree'
autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if !argc() | NERDTree | endif
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTReeShowLineNumbers=1
let g:NERDTreeeWinPos = "right"

" vim TagBar
" need sudo apt-get install exuberant-ctags
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" vim YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

" serach highlighting
Plugin 'haya14busa/incsearch.vim'
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo at http://vim-scripts.org/vim/scripts.html; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



