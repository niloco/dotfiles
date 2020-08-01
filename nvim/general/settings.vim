set shell=/bin/bash
let mapleader = "\<Space>"

" *============================================================================*
" Colors
" *============================================================================*
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

syntax on

set background=dark
colorscheme gruvbox-material

" *============================================================================*
" Editor
" *============================================================================*

" Tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

" Sane splits
set splitright
set splitbelow

" Line numbers
set relativenumber
set number

" Mouse
set mouse=a

" Search
set incsearch
set ignorecase
set smartcase
set gdefault

