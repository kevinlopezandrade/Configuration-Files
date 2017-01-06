"Set options
set hidden                               " Buffers con go to hidden without written the disk
set laststatus=2                         " Always the appear status line.
set number                               " Show line numbers
set backspace=2                          " Make backspace work like most other apps.
set tabstop=4                            " Number of visual spaces per TAB
set softtabstop=4                        " Number of spaces in tab when editing
set shiftwidth=4                         " When indenting with '>', use 4 spaces width
set expandtab                            " On pressing tab, insert 4 spaces
set encoding=utf8                        " Default encoding for buffers
set showmatch                            " highlight matching [{()}]
set completeopt-=preview                 " When autcomplete disable preview window.
set visualbell                           " No more annoying sounds
set statusline+=%{fugitive#statusline()} " Show branch in Vim Air-line
set splitbelow                           " Open splits below insted at bottom
set splitright                           " Open splits vertical right instead of left


"Commands

syntax on
filetype on
filetype plugin on
filetype indent on



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
nnoremap <leader>f :syntax on<CR>
inoremap <expr> <Tab> search('\%#[]>)"}]', 'n') ? '<Right>' : '<Tab>'

"Ui settings 

let g:airline_theme='neodark'
let g:neodark#use_custom_terminal_theme = 1
colorscheme neodark


"Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'
Plug 'othree/html5.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'KeitaNakamura/neodark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'

call plug#end()
let g:nautilus_patterns = [ "/usr/src/", "/nautilus/" ]

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
