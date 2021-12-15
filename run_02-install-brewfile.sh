#!/bin/bash

function find_brew_path() {
  if [[ -d /opt/homebrew ]]; then
    echo /opt/homebrew/bin/brew
  elif [[ -f /usr/local/bin/brew ]]; then
    echo /usr/local/bin/brew
  elif [[ -f "$HOME/.linuxbrew" ]]; then
    echo "$HOME/.linuxbrew/bin/brew"
  else
    echo "(shrug)"
  fi
}

BREW_PATH="$(find_brew_path)"

$BREW_PATH bundle --no-lock --file "$HOME/.Brewfile"