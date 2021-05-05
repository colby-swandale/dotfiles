export PATH="/opt/homebrew/bin:$PATH"

source $ZPLUG_SRC/init.zsh

zplug "plugins/git", from:oh-my-zsh
 
zplug "modules/completion", from:prezto
zplug "modules/history", from:prezto
 
zplug "b4b4r07/enhancd", use:init.sh
zplug "junegunn/fzf-bin", from:gh-r, as:command, use:"*darwin*amd64*", rename-to:fzf
zplug "junegunn/fzf"
zplug "asdf-vm/asdf", use:asdf.sh
zplug "starship/starship", from:gh-r, as:command, use: "*darwin*amd64*"

if ! zplug check; then
  zplug install
fi

zplug load

eval "$(starship init zsh)"
