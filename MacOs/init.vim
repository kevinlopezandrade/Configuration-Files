"Set options

set hidden                                         " Buffers con go to hidden without written the disk
set laststatus=2                                   " Always the appear status line.
set number                                         " Show line numbers
set backspace=2                                    " Make backspace work like most other apps.
set encoding=utf8                                  " Default encoding for buffers
set linebreak
set completeopt-=preview                           " When autcomplete disable preview window.
set visualbell                                     " No more annoying sounds
set splitbelow                                     " Open splits below insted at bottom
set splitright                                     " Open splits vertical right instead of left
set noshowcmd                                      " Don't show the strokes
set updatetime=250
set fillchars-=vert:\| 				   " Hide the line between two windows

" set shortmess+=c

"Commands
syntax on
filetype on
filetype plugin on
filetype indent on

let NERDTreeIgnore = ['\.class$','\.ctxt$','\.bluej$']


"Shorcuts

let mapleader = ","
nmap <leader>ne :NERDTree<cr>
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
nnoremap <leader>f :syntax on<CR>
inoremap <expr> <Tab> search('\%#[]>)"}]', 'n') ? '<Right>' : '<Tab>'
vnoremap <leader>c "+y
nnoremap <S-J><S-J> <C-W><C-W>
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>cd :cd %:p:h<CR>
nmap <silent> <leader>d <Plug>DashSearch



"Plugins

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'iCyMind/NeoSolarized'
Plug 'othree/html5.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rizzatti/dash.vim'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'


call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme = 'tomorrow'
let g:UltiSnipsExpandTrigger="<C-N>"

"UI
if has("gui_vimr")
	set termguicolors
	set background=dark
	let g:neosolarized_contrast = "high"
	" colorscheme NeoSolarized
	colorscheme base16-ocean
	hi NonText guifg=bg
endif
