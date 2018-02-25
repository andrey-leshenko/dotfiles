set nocompatible

" On Windows load ~/.vim in adittion to ~/vimfiles
set rtp+=~/.vim,~/.vim/after
execute pathogen#infect()

" set rtp+=~.vim/bundle/ctrlp.vim

set noswapfile

filetype plugin indent on
syntax on

set laststatus=2
set backspace=2
set incsearch
set relativenumber
set number
set hls
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set cursorline

set ruler
set showcmd

set autoindent
set smartindent

set history=256

set encoding=utf-8

set scrolloff=3

noremap <c-space> <c-n>
noremap <space> :

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" nnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

colorscheme xoria256

let g:html_indent_inctags = "body,head,tbody"
