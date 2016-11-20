"Set options

set laststatus=2                     " Always the appear status line.
set number                           " Show line numbers
set backspace=2                      " Make backspace work like most other apps.
set tabstop=4                        " Number of visual spaces per TAB
set softtabstop=4                    " Number of spaces in tab when editing
set shiftwidth=4                     " When indenting with '>', use 4 spaces width
set expandtab                        " On pressing tab, insert 4 spaces
set encoding=utf8                    " Default encoding for buffers
set showmatch                        " highlight matching [{()}]
set completeopt-=preview             " When autcomplete disable preview window.
set visualbell                       " No more annoying sounds


"Commands

augroup omnicomplete
    autocmd!
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup END

filetype plugin indent on            " Enables filetype detection and loads the specific identation and plugins to the detected filetype


"Shorcuts

let mapleader = ","                  
nmap <leader>ne :NERDTree<cr>
inoremap jk <Esc>
inoremap JK <Esc>
tnoremap <Esc> <C-\><C-n>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
nnoremap <leader><space> :nohlsearch<CR>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
cnoreabbrev W    w
cnoreabbrev Wq   wq
cnoreabbrev WQ   wq
cnoreabbrev Q    q

"Ui settings 

let g:airline_theme='neodark'
let g:neodark#use_custom_terminal_theme = 1
colorscheme neodark


"Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'KeitaNakamura/neodark.vim'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'
Plug 'othree/html5.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()
