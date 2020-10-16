" functionalities
syntax on
set nu
set tabstop=2
set nocompatible
set autoindent
set incsearch
set wildmenu

" github theme configuration :) 
set background=dark
set termguicolors
colorscheme github
let g:airline_theme = "github"	
	

" ayu theme configuration :)
 "set termguicolors
 "let ayucolor="dark"
 "colorscheme ayu
	
" shortcuts
map q :quit<CR>
map <C-K><C-B> :NERDTreeToggle<CR>
map <C-J> :term<CR>

" vundle :)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" close (), {}, [], etc
Plugin 'jiangmiao/auto-pairs'
" bottom bar to show language, lines, coding, etc
Plugin 'vim-airline/vim-airline'
" file explorer (side navigation)
Plugin 'preservim/nerdtree'
" emmet for vim (faster html coding)
Plugin 'mattn/emmet-vim'

" snippets
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" themes
Plugin 'tomasr/molokai'
Plugin 'ayu-theme/ayu-vim'
Plugin 'cormacrelf/vim-colors-github'

call vundle#end()
filetype plugin indent on

" github.com/moisesduartem/dotfiles
