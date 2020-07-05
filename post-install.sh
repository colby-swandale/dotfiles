#!/bin/bash

set -euo pipefail

STOW="$(brew --prefix)/bin/stow"
DOCKUTIL="$(brew --prefix)/bin/dockutil"

if [[ "$OSTYPE" == "darwin"* ]]; then
  stow zsh git asdf ssh hyper

  # $DOCKUTIL --remove all
  # $DOCKUTIL --add /Applications/Firefox.app
  # $DOCKUTIL --add /System/Applications/Music.app
  # $DOCKUTIL --add /Applications/Things3.app
  # $DOCKUTIL --add /Applications/1Password\ 7.app
  # $DOCKUTIL --add /Applications/Bear.app
  # $DOCKUTIL --add '~/Downloads' --view grid --display folder
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

  stow zsh git asdf
  chsh -s $(which zsh)
fi