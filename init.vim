"Set options

syntax on
set laststatus=2         " Always the appear status line.
set number               " Show line numbers
set hidden               " Change buffers without saving
set backspace=2          " Make backspace work like most other apps.
set encoding=utf8        " Default encoding for buffers
set completeopt-=preview " When autcomplete disable preview window.
set visualbell           " No more annoying sounds
set termguicolors        " Add true color support
set splitbelow           " Open splits below insted at bottom
set splitright           " Open splits vertical right instead of left
set updatetime=250       " For gitgutter
set expandtab            " Space intead of tabs
set timeoutlen=1000      " Tmux fast ESC 
set ttimeoutlen=0        " Tmux fast ESC 


"Filetype

filetype plugin indent on " Enables filetype detection and loads the specific identation and plugins to the detected filetype


"Code Formatting options

let g:nautilus_patterns = [ "/nautilus" ]

"Shortcuts

let mapleader = ","                  
nmap <leader>ne :NERDTree<cr>
nmap <leader>f  :syntax on <cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <Esc>
inoremap JK <Esc>
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
nnoremap <leader><space> :nohlsearch<CR>
cnoreabbrev W    w
cnoreabbrev Wq   wq
cnoreabbrev WQ   wq
cnoreabbrev Q    q
inoremap <expr> <Tab> search('\%#[]>)}"]', 'n') ? '<Right>' : '<Tab>'
nnoremap <leader>o <C-W><C-F>
inoremap <silent><expr><C-Space> pumvisible() ? "\<c-n>" : "\<space>"
vnoremap <leader>c "+y
nnoremap <leader>g :call GNUStyle()<cr>


"Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'KeitaNakamura/neodark.vim'
Plug 'bling/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'kevinlopezandrade/nautilus-coding-style', {'for': 'c'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-syntax-extra', {'for': 'c'}
Plug 'vim-jp/vim-cpp', {'for': 'c'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'arrufat/vala.vim', {'for': 'vala'}

call plug#end()


"Enable deoplete at start

let g:deoplete#enable_at_startup = 1


"UI Settings

colorscheme neodark
let g:airline_theme='tomorrow'


"Auxiliar Functions

function! GNUStyle()
  "From GNU Web
  setlocal cindent
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal softtabstop=2
  setlocal textwidth=79
  setlocal fo-=ro fo+=cql
endfunction
