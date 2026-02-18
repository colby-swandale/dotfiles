eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source
fzf --fish | source

set fish_greeting
fish_add_path -m ~/bin
fish_add_path -m ~/.local/bin
fish_add_path -m /opt/homebrew/opt/trash/bin

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
