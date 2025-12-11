#!/usr/bin/env zsh
set -e

brew bundle --cleanup

# Open Apple ID preferences
open "x-apple.systempreferences:com.apple.preferences.internetaccounts"

