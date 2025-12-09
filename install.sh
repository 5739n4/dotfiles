#!/usr/bin/env bash
set -e

# 1. Xcode CLI tools (needed for git, brew)
# skips to next  step after invoking popup to install CLI tools, i want it to wait until setup is done
xcode-select -p &>/dev/null || xcode-select --install
while ! xcode-select -p &>/dev/null; do
  echo "Waiting for Xcode CLI tools to be installed..."
  sleep 1
done

# 2. Homebrew (idempotent)
if ! command -v brew >/dev/null; then
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# 3. chezmoi
brew install chezmoi

# 4. Init + apply (idempotent)
chezmoi init --apply 57339n4

# 5. Open Apple ID preferences
open "x-apple.systempreferences:com.apple.preferences.internetaccounts"

# 6. Done
echo "🎉 Setup complete! Your dotfiles are now managed by chezmoi."

