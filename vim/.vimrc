" Compatibility

set nocompatible		" turn off vi compatible mode
set noswapfile			" don't litter the system with swap files
set backspace=2			" make backspace delete over anything
set history=256

" On Windows load ~/.vim in adittion to ~/vimfiles
"set runtimepath+=~/.vim,~/.vim/after
"execute pathogen#infect()

" Editor customizations

set laststatus=2		" always show a status line
set ruler				" show the ruler
set relativenumber		" show relative line numbers for easy jumping
set number				" still show the absolute line number for current line
set cursorline			" highlight the cursor line
set showcmd				" display incomplete commands
set hlsearch			" highlight the search results
set incsearch			" show search results while entering the search query
set ignorecase			" put here just for smartcase to work (ignores case in searches)
set smartcase			" ignore case only when query is all lowercase
set splitbelow			" when splitting horizontally add new window below
set splitright			" when splitting vertically add new window to the right
set wildmenu			" make command completion much better
set scrolloff=3			" always keep 3 lines around the cursor
set listchars=tab:>-,trail:-	" change how tabs are visualized with :set list

" Editing customizations

syntax on				" enable syntax highlighting
filetype plugin indent on	" enable file type detection
set autoindent			" preserve indent between lines
set smartindent			" add indent based on keywords and braces
set encoding=utf-8		" use UTF-8
set nrformats-=octal	" don't recognize octal numbers for C-a and C-x

" Default tab behaviour

set tabstop=4			" See http://tedlogan.com/techblog3.html
set shiftwidth=4		" See http://tedlogan.com/techblog3.html
set softtabstop=4		" See http://tedlogan.com/techblog3.html
set noexpandtab			" See http://tedlogan.com/techblog3.html

" Key remappings

nnoremap <CR> :w<CR>
noremap <c-space> <c-n>
noremap <space> :

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Open new line from insert mode
inoremap <S-CR> <C-O>o

"let g:html_indent_inctags = "body,head,tbody,style"

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Pluagins

colorscheme xoria256
