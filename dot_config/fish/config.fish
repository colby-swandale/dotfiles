eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source
fzf --fish | source

set fish_greeting
fish_add_path -m ~/bin
fish_add_path -m ~/.local/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/colby/.lmstudio/bin
# End of LM Studio CLI section

