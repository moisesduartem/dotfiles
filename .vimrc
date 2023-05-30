" native settings
syntax on
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set hlsearch
set incsearch
set wildmenu
set noswapfile

" vim-devicons
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

" devicons
" Plug 'ryanoasis/vim-devicons'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" after install, run 
" :! gem install solargraph and :CocInstall coc-solargraph # for ruby
" :CocInstall coc-eslint and :CocConfig to adjust settings

" vim snippets
Plug 'honza/vim-snippets'

" autopairs
Plug 'jiangmiao/auto-pairs'

" airline
Plug 'vim-airline/vim-airline'

" nerdtree 
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" floaterm
Plug 'voldikss/vim-floaterm'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'ngmy/vim-rubocop'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Plugins para React, TypeScript e ESLint
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'

call plug#end()

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

" Configurações adicionais (JS, TS, JSX)

" let g:typescript_react = 1
" let g:javascript_plugin_jsx = 1
" let g:jsx_ext_required = 0

let g:typescript_complete_comments = 1
let g:typescript_auto_insert = 1

" Atalho para formatar código com ESLint
nnoremap <leader>ff :ALEFix<CR>

" gruvbox
" let g:gruvbox_contrast_dark="hard"

" theme
set background=dark

colorscheme gruvbox
