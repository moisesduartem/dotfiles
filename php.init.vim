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
nnoremap <C-n> :tabnew<CR>
nnoremap <C-o> :tabnew<CR>:FZF<CR>

" vim-plug
call plug#begin()

" autopairs
Plug 'jiangmiao/auto-pairs'

" themes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'

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
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" coc extensions ~> run :CocInstall
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-phpls']

" ts
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'

" js
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" vim-snippets
Plug 'honza/vim-snippets'

" gitgutter
Plug 'airblade/vim-gitgutter'

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
" set background=dark
" colorscheme onedark
colorscheme codedark
