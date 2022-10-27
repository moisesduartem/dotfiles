" colorscheme / theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" functionalities
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set autoindent
set incsearch
set wildmenu

set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

" ruby/erb
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

" vundle :)
set rtp+=~/.vim/bundle/Vundle.vim

" nerdtree shortcuts
map _ :NERDTreeFind<CR> " open nerdtree window
map + :NERDTreeClose<CR> " open nerdtree window

" tab shortcuts
map - :tabprevious<CR> " go to the previous tab
map = :tabNext<CR> " go to the next tab

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
" ruby/rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" themes
Plugin 'morhetz/gruvbox'

call vundle#end()
