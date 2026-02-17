eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source
fzf --fish | source

set fish_greeting
fish_add_path -m ~/bin
fish_add_path -m ~/.local/bin
