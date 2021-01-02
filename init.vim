" native settings
syntax on
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set incsearch
set wildmenu

" shortcuts
" let mapleader="\<space>"
nnoremap <F5> :source %<CR>
nnoremap <C-J> :FloatermNew<CR>
nnoremap <C-K> :FloatermNew fzf<CR>
nnoremap <C-B> :NERDTreeToggle<CR>
nnoremap <C-I> :PlugInstall<CR>

" vim-plug
call plug#begin()

  Plug 'jiangmiao/auto-pairs'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  Plug 'voldikss/vim-floaterm'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
  Plug 'junegunn/fzf.vim'
  
  Plug 'joshdick/onedark.vim'

  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" deoplete configurations
let g:deoplete#enable_at_startup = 1

" NERDTree configurations 
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set background=dark
colorscheme onedark
