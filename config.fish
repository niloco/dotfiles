if test -f /home/niloco/.autojump/share/autojump/autojump.fish; . /home/niloco/.autojump/share/autojump/autojump.fish; end

## abbreviations

# git
abbr -a gs 'git status'
abbr -a gpush 'git push'
abbr -a gpull 'git pull'

# file viewing
abbr -a l 'exa -l -h '
abbr -a ls 'exa -l -h '
abbr -a ll 'exa -l -h -a'
abbr -a t 'exa -l -h -T -L=2'
abbr -a tt 'exa -l -h -T -L=5'

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
abbr -a n nvim

# make
abbr -a m make
