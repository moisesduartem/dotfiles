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

" java compiler configuration
autocmd filetype java nnoremap <F4> :w <bar> exec '!javac '.shellescape('%').' && java '.shellescape('%:r')<CR>

" shortcuts
map q :quit<CR>
map <C-K><C-B> :NERDTreeToggle<CR>
map <C-J> :term<CR>

" vim-plug :)
call plug#begin()

Plug 'VundleVim/Vundle.vim'
" close (), {}, [], etc
Plug 'jiangmiao/auto-pairs'
" bottom bar to show language, lines, coding, etc
Plug 'vim-airline/vim-airline'
" file explorer (side navigation)
Plug 'preservim/nerdtree'
" emmet for vim (faster html coding)
Plug 'mattn/emmet-vim'

" snippets
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" themes
Plug 'morhetz/gruvbox'

call plug#end()
filetype plugin indent on

" github.com/moisesduartem/dotfiles

