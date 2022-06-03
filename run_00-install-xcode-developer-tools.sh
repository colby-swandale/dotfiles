#!/bin/bash
# Install the Xcode Command Line Tools.
if ! [ -f "/Library/Developer/CommandLineTools/usr/bin/git" ]; then
  CLT_PACKAGE=$(softwareupdate -l \
    | grep -B 1 "Command Line Tools" \
    | awk -F"*" '/^ *\*/ {print $2}' \
    | sed -e 's/^ *Label: //' -e 's/^ *//' \
    | sort -V \
    | tail -n1)
  sudo softwareupdate -i "$CLT_PACKAGE"

  xcode-select --install
fi

# Accept XCode T&Cs
if /usr/bin/xcrun clang 2>&1 | grep $Q license; then
  sudo xcodebuild -license
fi