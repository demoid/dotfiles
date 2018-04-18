"enable 256 colors
set t_Co=256
"make highlighted things readable
set background=dark

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
map <leader>g :noh<CR>

"Go specific bindings - move to different file when necessary
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go set noexpandtab
autocmd FileType go set softtabstop=0
autocmd FileType go set tabstop=2
"Rust specific bindings
"autocmd FileType rs let g:rustfmt_autosave = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

"vim-plug plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'racer-rust/vim-racer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
"RLS stuff
autocmd BufReadPost *.rs setlocal filetype=rust
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Maps K to hover, gd to goto definition, F2 to rename
"nnoremap <silent> K :call LanguageClient_textDocument_hover()
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()
let g:racer_cmd = "/home/sebsoto/.cargo/bin/racer"
let g:deoplete#enable_at_startup = 1
