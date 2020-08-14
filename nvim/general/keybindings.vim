if !exists('g:vscode')
	" sane leader
	let mapleader = "\<space>"

	" easier entry to command mode
	nnoremap ; :
	vnoremap ; :

	" center search results
	nnoremap <silent> n nzz
	nnoremap <silent> N Nzz

    " ctrl+c as Esc
	nnoremap <C-c> <Esc>
	inoremap <C-c> <Esc>
	vnoremap <C-c> <Esc>
	snoremap <C-c> <Esc>
	xnoremap <C-c> <Esc>
	cnoremap <C-c> <Esc>
	onoremap <C-c> <Esc>
	lnoremap <C-c> <Esc>
	tnoremap <C-c> <Esc>

    " go to start/end of line
	nnoremap H ^
	vnoremap H ^
	onoremap H ^
	nnoremap L $
	vnoremap L $
	onoremap L $

    " move by line regardless of wrapping
    nnoremap j gj
    nnoremap k gk

    " move between matching braces etc
    nnoremap m %
	vnoremap m %

    map <C-n> :NERDTreeToggle<CR>

    " brace matching
    inoremap {<CR> {<CR>}<ESC>O

	" buffer navigation
	nnoremap <silent> <TAB> :bnext<CR>
	nnoremap <silent> <S-TAB> :bprevious<CR>

	" window resizing
	nnoremap <silent> <M-j>    :resize -2<CR>
	nnoremap <silent> <M-k>    :resize +2<CR>
	nnoremap <silent> <M-h>    :vertical resize -2<CR>
	nnoremap <silent> <M-l>    :vertical resize +2<CR>

	" better indenting in visual mode
	vnoremap < <gv
	vnoremap > >gv

else
        
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

    " Brace matching
    inoremap {<CR> {<CR>}<ESC>O

    " Bindings with <leader>

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
