source ~/.config/dotfiles/nvim/vim-plug/plugins.vim
source ~/.config/dotfiles/nvim/general/settings.vim
source ~/.config/dotfiles/nvim/general/keybindings.vim

if !exists('g:vscode')
	source ~/.config/dotfiles/nvim/plugin-config/coc.vim
	source ~/.config/dotfiles/nvim/plugin-config/fzf.vim
	source ~/.config/dotfiles/nvim/plugin-config/nerdcommenter.vim
	source ~/.config/dotfiles/nvim/plugin-config/gitgutter.vim
	source ~/.config/dotfiles/nvim/plugin-config/lightline.vim
	source ~/.config/dotfiles/nvim/plugin-config/easymotion.vim
endif
