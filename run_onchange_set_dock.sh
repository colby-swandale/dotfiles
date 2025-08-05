#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add /Applications/Safari.app
dockutil --no-restart --add /System/Applications/Mail.app
dockutil --no-restart --add /System/Applications/Music.app
dockutil --no-restart --add /System/Applications/Messages.app
dockutil --no-restart --add /System/Applications/Calendar.app
dockutil --no-restart --add /Applications/Visual\ Studio\ Code.app
dockutil --no-restart --add /Applications/Ghostty.app
dockutil --no-restart --add /Applications/Slack.app
dockutil --no-restart --add /Applications/Claude.app

dockutil --add ~/Downloads
