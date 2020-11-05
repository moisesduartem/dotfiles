" colorscheme / theme
colorscheme gruvbox
set background=dark

" functionalities
syntax on
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set autoindent
set incsearch
set wildmenu

" c & c++ compiler configuration
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

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
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

" github.com/moisesduartem/dotfiles
