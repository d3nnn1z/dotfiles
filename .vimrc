filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'

call vundle#end()            "
filetype plugin indent on    "

" default settings
syntax on
set timeout timeoutlen=5000
set ttimeoutlen=10
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set nocompatible
set laststatus=2
set encoding=utf-8
set noswapfile
set hidden
set showmatch
set nobackup
set pastetoggle=<F2>
set incsearch
set hlsearch
set number

colorscheme molokai

" set leader to space, covers whole keyboard
let mapleader=" "

" forget sudo? no problem 
cmap w!! w !sudo tee & >/dev/null

" esc is too far!
inoremap jk <ESC>
" easy navigation for wrapping
nnoremap j gj
nnoremap k gk

" easy windows switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" plugin: vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" plugin: nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" plugin: syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

