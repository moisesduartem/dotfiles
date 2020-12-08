" Colorscheme / Theme
set background=dark

" Functionalities
syntax on
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible
set autoindent
set incsearch
set wildmenu

" C & C++ compiler configuration
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o'.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').'-o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" Java compiler configuration
autocmd filetype java nnoremap <F4> :w <bar> exec '!javac'.shellescape('%').' && java '.shellescape('%:r')<CR>

" Shortcuts
nnoremap <C-S> :w<CR>
nnoremap <C-W> :quit<CR>
nnoremap wq :wq<CR>
nnoremap ww :w<CR>
nnoremap q :quit<CR>
nnoremap qq :quit!<CR>
nnoremap o :tabnew<space>
" NERDTree toggle
nnoremap - :NERDTreeToggle<CR>
" Search shortcut
nnoremap <c-p> :Files<cr>

" Mude para o modo normal com o esc
tnoremap <Esc> <C-\><C-j>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
    resize 10
    endfunction
    nnoremap <c-j> :call OpenTerminal()<CR>

"" use alt+hjkl para mover entre split/vsplit paineis
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l"
"     "

" Update automatically init.vim file
let mapleader="\<space>"
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" vim-plug :)
call plug#begin()

" close (), {}, [], etc
Plug 'jiangmiao/auto-pairs'

" bottom bar to show language, lines, coding, etc
Plug 'vim-airline/vim-airline'

" expand syntax highlight
Plug 'sheerun/vim-polyglot'

" File Explorer 
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Search tool
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

" Intellisense
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set encoding=UTF-8

"NERDTree configurations 
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
"nerdtree-git-plugin
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

" ale (intellisense) configuration
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    " inoremap <silent><expr> <c-space> coc#refresh()
    " " Use <cr> to confirm completion, `<C-g>u` means break undo chain at
    " current position.
    "
    "" Coc only does snippet and additional edit on confirm.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>""
    " "
    " /coc

syntax on
colorscheme onedark

filetype plugin indent on

" github.com/moisesduartem/dotfiles
