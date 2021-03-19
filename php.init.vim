" native settings
syntax on
set termguicolors
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch
set wildmenu
set encoding=UTF-8

" shortcuts
" let mapleader="\<space>"
nnoremap <F5> :source %<CR>
nnoremap <C-j> :FloatermNew<CR>
nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-i> :PlugInstall<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-w> :q<CR>

" vim-plug
call plug#begin()

" autopairs
Plug 'jiangmiao/auto-pairs'

" themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" airline
Plug 'vim-airline/vim-airline'

" floaterm
Plug 'voldikss/vim-floaterm'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'   }
Plug 'junegunn/fzf.vim'

" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" devicons
" Plug 'ryanoasis/vim-devicons'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" coc + php = coc-phpls
Plug 'marlonfan/coc-phpls'

call plug#end()

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" gruvbox
" let g:gruvbox_contrast_dark="hard"

" theme
set background=dark
colorscheme onedark
