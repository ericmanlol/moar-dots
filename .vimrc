" disable vi compatibility
set nocompatible


" general settings {{{
"====================================================================

syntax on

set number

set textwidth=79
set wrap
set whichwrap+=h,l,<,>,[,]

" give one virtual space at end of line
set virtualedit=onemore

" 256bit terminal
set t_Co=256

" alway show last status line
set laststatus=2

" spacing / indents
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set backspace=indent,eol,start
" set nosmartindent
set smartindent

set hlsearch

" case insensitive search
set ignorecase
set smartcase

" search improvement
set incsearch
set noanti
set history=500


" turn backup off
set nobackup
set nowritebackup
set noswapfile
auto read when outside changes
set autoread

" auto read when outside changes
set autoread

" allow change buffer without saving it first
set hidden

set title
set cursorline

" explicitly set encoding to utf-8
set encoding=utf-8
set termencoding=utf-8

" display unprintable chars
set list
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪



" minimal number of screen lines to keep above and below the cursor
set scrolloff=10

" how many lines to scroll at a time, make scrolling appears faster
set scrolljump=3

" auto complete setting
set completeopt=longest,menuone

" split to the right and below
set splitright
set splitbelow

" testing this for split height
set winheight=50

" regex
set magic

" show incomplete commands
set showcmd

"}}}



" leader key mappings {{{
"===============================================================================


" map leader and localleader key to comma
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" toggle list for special chars + thanks @ian
noremap <leader>l :set nolist!<CR>



" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>

" <Leader>1: Toggle between paste mode
nnoremap <silent> <Leader>1 :set paste!<cr>


" <Leader>,: Switch to previous split
nnoremap <Leader>, <C-w>p

" <Leader>p: Copy the full path of the current file to the clipboard
nnoremap <silent> <Leader>p :let @+=expand("%:p")<cr>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<cr>

" <Leader>cd: Switch to the directory of the open buffer
nnoremap <Leader>cd :cd %:p:h<cr>:pwd<cr>

" <Leader>w: Close current buffer
nnoremap <Leader>w :bdelete<cr>


"}}}


" insert mode mappings {{{
"===============================================================================


imap jj <Esc>
imap Jk <Esc>


"}}}

" utilities for the forgetful/me {{{
"==============================================================================
" toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


"check for bad mappings with the following command
":verbose imap <BS> wll show insert-mode mapping for backspace key
":verbose imap <TAB> will show insert-mode mapping for tab key

"}}}


