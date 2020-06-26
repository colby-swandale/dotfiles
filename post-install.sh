#!/bin/bash

set -euo pipefail

DOCKUTIL=/usr/local/bin/dockutil

$DOCKUTIL --remove all
$DOCKUTIL --add /Applications/Firefox.app
$DOCKUTIL --add /System/Applications/Music.app
$DOCKUTIL --add /Applications/Things3.app
$DOCKUTIL --add /Applications/1Password\ 7.app
$DOCKUTIL --add /Applications/Bear.app
$DOCKUTIL --add '~/Downloads' --view grid --display folder
