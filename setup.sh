rm ~/.vimrc ~/.bashrc ~/.tmux.conf ~/.config/nvim/init.vim ~/.config/fish/config.fish

ln -s ~/.config/dotfiles/.vimrc ~/.vimrc
ln -s ~/.config/dotfiles/.bashrc ~/.bashrc
ln -s ~/.config/dotfiles/.tmux.conf ~/.tmux.conf
mkdir ~/.config/nvim ~/.config/fish
ln -s ~/.config/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/.config/dotfiles/config.fish ~/.config/fish/config.fish
