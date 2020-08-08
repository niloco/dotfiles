if !exists('g:vscode')
	nnoremap <silent> n nzz
	nnoremap <silent> N Nzz

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
	vnoremap H ^
	onoremap H ^
	nnoremap L $
	vnoremap L $
	onoremap L $

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

	" Tab navigation
	nnoremap <silent> <TAB> :bnext<CR>
	nnoremap <silent> <S-TAB> :bprevious<CR>

	" Window resizing
	nnoremap <silent> <M-j>    :resize -2<CR>
	nnoremap <silent> <M-k>    :resize +2<CR>
	nnoremap <silent> <M-h>    :vertical resize -2<CR>
	nnoremap <silent> <M-l>    :vertical resize +2<CR>

    " Bindings with <leader>
	map <leader> <Plug>(easymotion-prefix)

    " Toggles between most recent buffers
    nnoremap <leader><leader> <C-^>

    " Quick save
    " nnoremap <leader>w :w<CR>
    nnoremap ;w :w<CR>

    " Quick quit (if saved)
    " nnoremap <leader>q :q<CR>
    nnoremap ;q :q<CR>

    " Quick quit without saving
    " nnoremap <leader>x :q!<CR>
    nnoremap ;x :x<CR>

	" Split navigation
	nnoremap <leader>h <C-w>h
	nnoremap <leader>j <C-w>j
	nnoremap <leader>k <C-w>k
	nnoremap <leader>l <C-w>l

	" Quick config reload
	nnoremap ;r :so $MYVIMRC<CR>

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
