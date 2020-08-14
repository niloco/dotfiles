" avoiding annoying status messages
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<space>' <cr>

" initial setup
let g:which_key_map = {}
let g:which_key_use_floating_win = 0
let g:which_key_exit = "\<c-c>"

" 'fixing' status bar when which_key is active
autocmd! FileType which_key
autocmd FileType which_key set laststatus=0 noshowmode noruler
	\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" 1st level bindings
let g:which_key_map['w'] = [':w', 'save buffer']
let g:which_key_map['d'] = [':bd', 'delete buffer']
let g:which_key_map['o'] = [':GFiles', 'open file in current repo']
let g:which_key_map[';'] = [':Buffers', 'switch to buffer']
let g:which_key_map[' '] = ['<c-^>', 'switch to last buffer']
let g:which_key_map['/'] = ['<plug>NERDCommenterToggle', 'toggle comments']
let g:which_key_map['r'] = [':so $MYVIMRC', 'reload config']
let g:which_key_map['q'] = [':q', 'quit']
let g:which_key_map['x'] = [':q!', 'quit without saving']
let g:which_key_map['h'] = [':nohlsearch', 'clear search']

" mappings for movement around a buffer
let g:which_key_map.m = {
	\ 'name' : '+motions',
	\ 'w': ['<plug>(easymotion-overwin-w)', 'jump to word'],
	\ 'l': ['<plug>(easymotion-overwin-line)', 'jump to line'],
	\}

" mappings for dealing with buffers
let g:which_key_map.b = {
	\ 'name' : '+buffers',
	\}

" mappings for finding stuff
let g:which_key_map.f = {
	\ 'name' : '+search',
	\ 'b': [':BLines', 'lines in current buffer'],
	\ 'l': [':Lines', 'lines in open buffers'],
	\ 'r': [':Rg', 'ripgrep'],
	\}

" mappings for lsp (coc in this case)
let g:which_key_map.l = {
	\ 'name' : '+lsp',
	\ '[': ['<plug>(coc-diagnostic-prev)', 'previous diagnostic'],
	\ ']': ['<plug>(coc-diagnostic-next)', 'next diagnostic'],
	\ 'd': ['<plug>(coc-definition)', 'goto definition'],
	\ 'y': ['<plug>(coc-type-definition)', 'goto type definition'],
	\ 'i': ['<plug>(coc-implementation)', 'goto implementation'],
	\ 'r': ['<plug>(coc-references)', 'goto references'],
	\ 'k': [':Docs', 'show documentation'],
	\ 'n': ['<plug>(coc-rename)', 'rename symbol'],
	\ 'f': ['<plug>(coc-format-selected)', 'format selected code'],
	\}

" localleader test map
" autocmd! FileType *.tex
" autocmd FileType *.tex let g:which_key_map['c'] = [':VimtexCompile', 'compile latex']
"
" enabling which_key_map
call which_key#register('<space>', "g:which_key_map")
