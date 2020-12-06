" colorscheme / theme
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
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o'.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').'-o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" java compiler configuration
autocmd filetype java nnoremap <F4> :w <bar> exec '!javac'.shellescape('%').' && java '.shellescape('%:r')<CR>

" shortcuts
nnoremap <C-S> :w<CR>
nnoremap <C-W> :quit<CR>
map q :quit<CR>
map <C-K><C-B> :NERDTreeToggle<CR>
map <C-J> :term<CR>

" vim-plug :)

call plug#begin()

" close (), {}, [], etc
Plug 'jiangmiao/auto-pairs'
" bottom bar to show language, lines, coding, etc
Plug 'vim-airline/vim-airline'
" emmet for vim (faster html coding)
Plug 'mattn/emmet-vim'
" expand syntax highlight
Plug 'sheerun/vim-polyglot'
" file manager
Plug 'preservim/nerdtree'

" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

call plug#end()

let NERDTreeShowHidden=1

syntax on
colorscheme onedark

filetype plugin indent on

"Plugin 'joshdick/onedark.vim' github.com/moisesduartem/dotfiles
