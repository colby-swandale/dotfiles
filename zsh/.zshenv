export ZPLUG_SRC=/usr/local/opt/zplug
export ZPLUG_HOME=$HOME/.zplug
export ZPLUG_BIN=$ZPLUG_HOME/bin
export HOMEBREW_NO_AUTO_UPDATE=1
export ENHANCD_DISABLE_DOT=1
export NVM_DID=$HOME/.nvm
export NODEJS_CHECK_SIGNATURES=no
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PGHOST=127.0.0.1

fpath+="$HOME/.zsh-autocomplete"

alias cat='bat'
alias ping='prettyping'
alias help='tldr'
alias ktmux='tmux kill-server'
alias be='bundle exec'
alias c='clear'
alias l='ls -la'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../..'
alias ls='exa'
alias du='ncdu'
alias cask='brew cask'

function reload { source ~/.zshrc }
