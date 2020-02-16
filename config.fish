# desktop location
if test -f /home/niloco/.autojump/share/autojump/autojump.fish 
	. /home/niloco/.autojump/share/autojump/autojump.fish
# laptop location
else if test -f /home/niloco/apps/autojump/.autojump/share/autojump/autojump.fish
	. /home/niloco/apps/autojump/.autojump/share/autojump/autojump.fish
end

if test -f /home/niloco/projects/tools/base16/base16-builder-python/output/fzf/fish/base16-gruvbox-dark-medium.fish
	source ~/projects/tools/base16/base16-builder-python/output/fzf/fish/base16-gruvbox-dark-medium.fish
else if test -f /home/niloco/projects/tools/base16-builder-python/output/fzf/fish/base16-gruvbox-dark-medium.fish
	source ~/projects/tools/base16-builder-python/output/fzf/fish/base16-gruvbox-dark-medium.fish
end

set -x PATH $PATH ~/.cargo/bin
set -gx FZF_DEFAULT_COMMAND 'rg --files --hidden'

eval (ssh-agent -c)

set EDITOR = nvim


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
abbr -a c cargo
abbr -a cc 'cargo check'
abbr -a cb 'cargo build'
abbr -a cbr 'env RUSTFLAGS="-C target-cpu=native" cargo build --release'
abbr -a cr 'cargo run'
abbr -a crr 'env RUSTFLAGS="-C target-cpu=native" cargo run --release'
abbr -a ct 'cargo test'

# neovim

# make
abbr -a m make

## functions

function d
	set start $PWD
	while test $PWD != "/"
		if test -d .git
			return
		end
		cd ../
	end
	cd start
end

function n
	d
	set file (fzf)
	echo $file
	if test -n "$file"
		nvim $file
	else
		return
	end
end
