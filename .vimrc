syntax on

colorscheme atom-dark-256 

" sublime text theme
	"colorscheme monokai

""" vim-code-dark (vscode vim theme)
	"colorscheme codedark
	"let g:airline_theme = 'codedark'

""" gruvbox color scheme (dark)
	"set background=dark
	"let g:gruvbox_contrast_dark='hard'
	"colorscheme gruvbox

set nu
set tabstop=2
set nocompatible              " be iMproved, required
set autoindent
set incsearch
set wildmenu

" shortcuts
map q :quit<CR>
map <C-B> :NERDTreeToggle<CR>
map <C-J> :term<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Utilities
Plugin 'jiangmiao/auto-pairs'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Themes
Plugin 'morhetz/gruvbox'
Plugin 'tomasiser/vim-code-dark'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sickill/vim-monokai'
Plugin 'gosukiwi/vim-atom-dark'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 
"
" github.com/moisesduartem/vimrc
