"enable 256 colors
set t_Co=256

"enable syntax processing
syntax enable 

"how many spaces each tab looks like
"set tabstop=2
"spaces per tab
set softtabstop=2
"uses spaces not tabs
set expandtab
"indent 4 spaces
set shiftwidth=2

"line numbers
set number

"show commands you are typing
set showcmd

"highlights current line
"set cursorline

"load indent config per filetype located at ~/vim/indent/
filetype indent on

"command autocomplete
set wildmenu

"matching {}
set showmatch

"search as chars are entered
set incsearch
"highlight search matches
"set hlsearch

"use indentation of previous line
set autoindent
"use intelligent indentation for C
set smartindent

"save on :make
set autowrite

"set leader key to space
":let mapleader = " "
map <space> <leader>

map <leader>n :cnext<CR>
map <leader>m :cprev<CR>
map <leader>a :cclose<CR>

"Go specific bindings - move to different file when necessary
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go set noexpandtab
autocmd FileType go set softtabstop=0
autocmd FileType go set tabstop=2

"vim-plug plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
