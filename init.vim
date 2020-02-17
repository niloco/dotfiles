set shell=/bin/bash
let mapleader = "\<Space>"

if !exists('g:vscode')
    call plug#begin('~/.config/nvim/plugged')

    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'justinmk/vim-sneak'
    Plug 'itchyny/lightline.vim'
    Plug 'machakann/vim-highlightedyank'
    Plug 'chriskempson/base16-vim'
    Plug 'sheerun/vim-polyglot'
	Plug 'preservim/nerdcommenter'
	Plug 'airblade/vim-rooter'
	Plug 'airblade/vim-gitgutter'
	Plug '~/projects/tools/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'flrnd/candid.vim'
    Plug 'flrnd/plastic.vim'
    Plug 'arzg/vim-substrata'
    Plug 'sainnhe/edge'
    Plug 'wadackel/vim-dogrun'
    Plug 'relastle/bluewery.vim'
    Plug 'mhartington/oceanic-next'
	Plug 'sainnhe/vim-color-forest-night'
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
	Plug 'agreco/vim-citylights'
	Plug 'kjssad/quantum.vim'
	Plug 'Rigellute/rigel'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'ntk148v/vim-horizon'
	Plug 'liuchengxu/space-vim-theme'
	Plug 'beikome/cosme.vim'
	Plug 'nightsense/cosmic_latte'
	Plug 'Nequo/vim-allomancer'

    call plug#end()


    " *============================================================================*
    " Plugin Settings
    " *============================================================================*

    " For lightline
    set noshowmode
	let g:lightline = { 'colorscheme': 'gruvbox_material' }

	" For nerdcommenter
	let g:NERDSpaceDelims = 1
	let g:NERDCompactSexyComs = 1
	let g:NERDDefaultAlign = 'left'
	let g:NERDCommentEmptyLines = 1
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDToggleCheckAllLines = 1

	" For gitgutter
	set updatetime=100
	set signcolumn=yes
	let g:gitgutter_signs = 1
	let g:gitgutter_grep = 'rg'

	" For CoC
	set signcolumn=yes

    " *============================================================================*
    " Colors
    " *============================================================================*
	if exists('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif

	set background=dark
	syntax on

	" let g:edge_style = 'neon'

	" let g:candid_color_store = {
	"     \ "black": {"gui": "#2f343f", "cterm256": "0"},
	"     \ "white": {"gui": "#efeeea", "cterm256": "255"},
	"     \}

	let g:candid_color_store = {
		\ "black": {"gui": "#1b2932", "cterm256": "0"},
		\ "white": {"gui": "#b5bdc3", "cterm256": "255"},
		\ "red": {"gui": "#c88da2", "cterm256": "255"},
		\ "purple": {"gui": "#3f848d", "cterm256": "255"},
		\ "yellow": {"gui": "#70c27f", "cterm256": "255"},
		\ "cyan": {"gui": "#d3b692", "cterm256": "255"},
		\ "green": {"gui": "#5998c0", "cterm256": "255"},
		\ "comment": {"gui": "#72c09f", "cterm256": "255"},
		\ "menublack": {"gui": "#1c1c1c", "cterm256": "255"},
		\ "grey": {"gui": "#445555", "cterm256": "255"},
		\}

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

	nnoremap <silent> n nzz
	nnoremap <silent> N Nzz

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

	" fzf stuff
	nnoremap <C-o> :Files<CR>
	nnoremap <leader>; :Buffers<CR>

    " Cancel search
    nnoremap <C-h> :nohlsearch<CR>
    vnoremap <C-h> :nohlsearch<CR>

    " Remap go to start/end of line
    map H ^
    map L $

    " No arrow keys
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
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

    " Brace matching
    inoremap {<CR> {<CR>}<ESC>O

    " Bindings with <leader>

    " Toggles between most recent buffers
    nnoremap <leader><leader> <C-^>

    " Quick save
    nnoremap <leader>w :w<CR>

    " Quick quit (if saved)
    nnoremap <leader>q :q<CR>

    " Quick quit without saving
    nnoremap <leader>x :q!<CR>

	" Split navigation
	nnoremap <leader>h <C-w>h
	nnoremap <leader>j <C-w>j
	nnoremap <leader>k <C-w>k
	nnoremap <leader>l <C-w>l

else
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
    nnoremap H ^
    nnoremap L $
    vnoremap H ^
    vnoremap L $

    " No arrow keys
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
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
    " map <C-n> :NERDTreeToggle<CR>

    " Suspend - doesn't work with visual and insert modes for some reason
    " " inoremap <C-f> :sus<CR>
    " " nnoremap <C-f> :sus<CR>
    " vnoremap <C-f> :sus<CR>

    " Brace matching
    inoremap {<CR> {<CR>}<ESC>O

    " Bindings with <leader>

    " Toggles between most recent buffers
    " nnoremap <leader><leader> <C-^>

    " Quick save
    nnoremap <leader>w :Write<CR>

    " Quick quit (if saved)
    nnoremap <leader>q :Quit<CR>

    " Quick quit without saving
    nnoremap <leader>Q :Quit!<CR>

    " Better split
    nnoremap <leader>v :Vsplit<Space>
    nnoremap <leader>s :Split<Space>
endif

