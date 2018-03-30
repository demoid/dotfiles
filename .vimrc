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
