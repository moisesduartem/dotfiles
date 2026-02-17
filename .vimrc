let mapleader = " "
nnoremap <Space> <Nop>

" cursor style
let &t_EI = "\e[1 q"

" Switch between windows
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Split windows
nnoremap <Leader>v <C-w>v
nnoremap <Leader>s <C-w>s
nnoremap <Leader>q <C-w>q
nnoremap <Leader>o <C-w>o

" display line numbers
set nu

" relative line numbers
set relativenumber

" display syntax
syntax on

" TAB config
set tabstop=4
set shiftwidth=4
set expandtab
