# # desktop location
# if test -f /home/niloco/.autojump/share/autojump/autojump.fish
#     . /home/niloco/.autojump/share/autojump/autojump.fish
# # laptop location
# else if test -f /home/niloco/apps/autojump/.autojump/share/autojump/autojump.fish
#     . /home/niloco/apps/autojump/.autojump/share/autojump/autojump.fish
# end

source ~/.config/dotfiles/fish/base16-gruvbox-dark-medium.fish

set -x PATH $PATH ~/.cargo/bin
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden'

if test -z $SSH_AGENT_PID
	eval (ssh-agent -c)
end

set -x EDITOR nvim

## abbreviations

# vscode insiders
abbr -a ci 'code-insiders'

# git
abbr -a gs 'git status'
abbr -a gpush 'git push'
abbr -a gpull 'git pull'

# file viewing
if command -v exa > /dev/null
	abbr -a l 'exa -l -h'
	abbr -a ls 'exa -l -h'
	abbr -a ll 'exa -l -h -a'
	abbr -a t 'exa -l -h -T -L=2'
	abbr -a tt 'exa -l -h -T -L=5'
else
	abbr -a l 'ls -l'
	abbr -a ls 'ls -l'
	abbr -a ll 'ls -l -a'
end

# navigation
abbr -a . 'cd ../'
abbr -a .. 'cd ../../'
abbr -a ... 'cd ../../../'
abbr -a .... 'cd ../../../../'

# cargo
abbr -a c 'cargo'
abbr -a cc 'cargo check'
abbr -a cb 'cargo build'
abbr -a cbr 'env RUSTFLAGS="-C target-cpu=native" cargo build --release'
abbr -a cr 'cargo run'
abbr -a crr 'env RUSTFLAGS="-C target-cpu=native" cargo run --release'
abbr -a ct 'cargo test'

# neovim
abbr -a n 'nvim'

# make
abbr -a m make

# zoxide
abbr -a ji "j -i"
abbr -a ja "zoxide add"
abbr -a jq "zoxide query"
abbr -a jr "zoxide remove"
abbr -a jd "find_dir"

## functions

# nvim stuff for opening relative to git repo
function find_repo
	set start $PWD
	while test $PWD != "/"
		if test -d .git
			return
		end
		cd ../
	end
	cd $start
end

function nvim_open
	find_repo
	set file (fzf)
	if test -n "$file"
		nvim $file
	end
end

# zoxide support
function zoxide-add --on-event fish_prompt
	zoxide add
end

function j
	if test (count $argv) -gt 0
		set _Z_RESULT (zoxide query $argv)
		switch "$_Z_RESULT"
			case 'query: *'
				cd (string sub -s 8 -- "$_Z_RESULT")
				commandline -f repaint
			case '*'
				echo -n "$_Z_RESULT"
		end
	end
end

function find_repo_dir
	find_repo
	set dir (fd -t d -H -I -E .git/ -E target/ | fzf)
	if test -n "$dir"
		cd $file
	end
end

function find_dir
	set current_dir $PWD
	cd ~
	set target_dir (fd -t d -H | fzf)
	if test -n "$target_dir"
		cd $target_dir
	else
		cd $current_dir
	end
end

