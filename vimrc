set nocompatible

"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'derekwyatt/vim-scala'
"Plugin 'ensime/ensime-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
"

set title

"set number
set relativenumber
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

set laststatus=2

if exists('+colorcolumn')
    set colorcolumn=100
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

syntax enable

filetype on
"filetype plugin on
"filetype indent on

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

"neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=4
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

inoremap <expr><C-g>    neocomplcache#undo_completion()
inoremap <expr><C-l>    neocomplcache#complete_common_string()
inoremap <expr><TAB>    pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h>    neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>     neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>    neocomplcache#close_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"

"scala
let g:syntastic_c_checkers=['make']
hi scalaNew gui=underline
hi scalaMethodCall gui=italic
hi scalaValName gui=underline
hi scalaVarName gui=underline

"sudo edit
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"ensime
"autocmd BufWritePost *.scala silent :EnTypeCheck
"nnoremap <localleader>t :EnTypeCheck<CR>
"au FileType scala nnoremap <localleader>df :EnDeclaration<CR>

"airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='solarized'
