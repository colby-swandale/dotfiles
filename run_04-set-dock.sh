#!/bin/bash

set -euo pipefail

dockutil --remove all
dockutil --add "/Applications/Safari.app" \
         --add "/System/Applications/Mail.app" \
         --add "/System/Applications/Music.app" \
         --add "/System/Applications/Messages.app" \
         --add "/Applications/Slack.app" \
         --add "/Applications/Visual Studio Code.app" \
         --add "/Applications/Notion.app" \
         --add "/Applications/1Password.app" \
         --add '~/Downloads' --view grid --display folder --sort dateadded