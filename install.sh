#!/bin/bash
set -euo pipefail

pretty_print() {
  printf "\n%b\n" "$1"
}

if ! command -v brew &>/dev/null; then
  pretty_print "Insalling Homebrew.."
  echo | bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" > /dev/null
  if [ $? -eq 0 ]; then echo 'OK'; else echo 'Oh no...'; fi
else
  pretty_print "You already have Homebrew installed...good job!"
fi

pretty_print "Install homebrew packages.."

if [[ "$OSTYPE" == "darwin"* ]]; then
  BUNDLE_FILE=Brewfile.darwin
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  BUNDLE_FILE=Brewfile.linux
fi

brew bundle --file $BUNDLE_FILE

pretty_print "Cleaning up.."

brew cask cleanup
brew cleanup

pretty_print "Running post install.."

. "post-install.sh"