eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source
fzf --fish | source

fish_add_path /opt/homebrew/opt/libpq/bin

set fish_greeting

# Use Homebrew's ssh-agent for FIDO2/YubiKey support
set -e SSH_AUTH_SOCK
eval (/opt/homebrew/opt/openssh/bin/ssh-agent -c) >/dev/null
fish_add_path -m ~/bin
fish_add_path -m ~/.local/bin
fish_add_path -m /opt/homebrew/opt/trash/bin

# Enable Claude Code LSP tool support
set -gx ENABLE_LSP_TOOL 1

# Abbreviations
abbr -a ls 'eza --icons'
abbr -a ll 'eza --icons -la'
abbr -a lt 'eza --icons --tree --level=2'
abbr -a cat bat
abbr -a rm trash
abbr -a gs 'git status'
abbr -a gd 'git diff'
abbr -a gl 'git log --oneline'
abbr -a gp 'git push'
abbr -a gc 'git commit'
abbr -a ga 'git add'
abbr -a gco 'git checkout'
abbr -a gb 'git branch'
