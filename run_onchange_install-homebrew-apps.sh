#!/usr/bin/env zsh
set -e

# Brewfile hash: {{ include "Brewfile" | sha256sum }}
brew bundle --cleanup

# Open Apple ID preferences
open "x-apple.systempreferences:com.apple.preferences.internetaccounts"

