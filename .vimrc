set nocompatible

"pathogen
call pathogen#infect()
"
"autocmd vimenter * NERDTree

set title

set number
set ruler
set wrap

set scrolloff=3

set ignorecase
set smartcase

set incsearch
set hlsearch

set visualbell
set noerrorbells

set backspace=indent,eol,start

set hidden

syntax enable

filetype on
filetype plugin on
filetype indent on

"solarized
set background=dark
colorscheme solarized
"

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

imap ;; <Esc>
map ;; <Esc>

set tabstop=4
set shiftwidth=4
set expandtab

let mapleader = "\\"

"ack
let g:ackprg="ack -H --nocolor --nogroup --column"
nmap <leader>j mA:Ack<space>
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWord>")<cr>"
"

let g:ctrl_map = '<c-p>'

let g:neocomplcache_enable_at_startup=1

let g:syntastic_c_checkers=['make']
