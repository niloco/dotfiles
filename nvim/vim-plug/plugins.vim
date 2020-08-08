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
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'easymotion/vim-easymotion'
	Plug 'ryanoasis/vim-devicons'

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
endif
