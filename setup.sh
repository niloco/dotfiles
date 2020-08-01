rm ~/.tmux.conf ~/.config/nvim/init.vim ~/.config/nvim/coc-settings.json ~/.config/fish/config.fish ~/.config/fish/base16-gruvbox-dark-medium.fish ~/.config/fish/fish_user_key_bindings.fish

mkdir ~/.config/nvim ~/.config/fish

ln -s ~/.config/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.config/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.config/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s ~/.config/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.config/dotfiles/fish/fish_user_key_bindings.fish ~/.config/fish/fish_user_key_bindings.fish
ln -s ~/.config/dotfiles/fish/base16-gruvbox-dark-medium.fish ~/.config/fish/base16-gruvbox-dark-medium.fish
