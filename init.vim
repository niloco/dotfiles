set shell=/bin/bash
let mapleader = "\<Space>"

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'justinmk/vim-sneak'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ycm-core/YouCompleteMe'

Plug 'rust-lang/rust.vim'

call plug#end()

" *============================================================================*
" Plugin Settings
" *============================================================================*

" For lightline
set noshowmode

" *============================================================================*
" Keymappings
" *============================================================================*
	
nnoremap ; :

" Ctrl+c as Esc
nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
snoremap <C-c> <Esc>
xnoremap <C-c> <Esc>
cnoremap <C-c> <Esc>
onoremap <C-c> <Esc>
lnoremap <C-c> <Esc>
tnoremap <C-c> <Esc>

" Cancel search
nnoremap <C-h> :nohlsearch<CR>
vnoremap <C-h> :nohlsearch<CR>

" Remap go to start/end of line
map H ^
map L $

" No arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move by line regardless of wrapping
nnoremap j gj
nnoremap k gk

" Move between matching braces etc
nnoremap m %

" Guess
map <C-n> :NERDTreeToggle<CR>

" Suspend - doesn't work with visual and insert modes for some reason
inoremap <C-f> :sus<CR>
nnoremap <C-f> :sus<CR>
vnoremap <C-f> :sus<CR>

" Brace matching
inoremap {<CR> {<CR>}<ESC>O

" Bindings with <leader>

" Toggles between most recent buffers
nnoremap <leader><leader> <C-^>

" Quick save
nnoremap <leader>w :w<CR>

" Quick quit (if saved)
nnoremap <leader>q :q<CR>

" Better split
nnoremap <leader>v :vsp<Space>
nnoremap <leader>h :sp<Space>

