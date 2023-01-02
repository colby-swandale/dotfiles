#!/bin/bash

set -e
set -u
set -o pipefail

# check if brew command is installed
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  # cache sudo password
  sudo -v
  # install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null
else
  echo "Homebrew is already installed"
fi