#!/bin/bash
set -euo pipefail

BREW=/usr/local/bin/brew

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
  BUNDLE_FILE=Brewfile.linux
fi

$BREW bundle --file $BUNDLE_FILE

pretty_print "Cleaning up.."

$BREW cask cleanup
$BREW cleanup

pretty_print "Running post install.."

. "post-install.sh"