"Set options

set laststatus=2             " Always the appear status line.
set number                   " Show line numbers
set hidden                   " Change buffers without saving
set backspace=2              " Make backspace work like most other apps.
set encoding=utf8            " Default encoding for buffers
set completeopt-=preview     " When autcomplete disable preview window.
set visualbell               " No more annoying sounds
set termguicolors            " Add true color support
set splitbelow               " Open splits below insted at bottom
set splitright               " Open splits vertical right instead of left
set updatetime=250           " For gitgutter
set expandtab                " Space intead of tabs
set timeoutlen=1000          " Tmux fast ESC
set ttimeoutlen=0            " Tmux fast ESC
set nopaste
set noshowcmd                " Don't show keystrokes
set list
set listchars=tab:»·,trail:· " Whitespaces characters
set invlist                  " By default hide the trailing whitespaces


"Filetype

filetype plugin indent on " Enables filetype detection and loads the specific identation and plugins to the detected filetype


"Code Formatting options

let g:nautilus_patterns = [ "/nautilus" ]
let NERDTreeIgnore = ['\.class$','\.ctxt$','\.bluej$']
let g:NERDTreeMapJumpLastChild = ''

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
vnoremap <leader>c "+y
nnoremap <leader>g :call GNUStyle()<cr>
nnoremap <S-J><S-J> <C-W><C-W>
nnoremap <leader>nn :NERDTreeToggle<cr> 


"Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
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
Plug 'rust-lang/rust.vim'

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

let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
