#!/usr/bin/env zsh
set -e

# 1. Xcode CLI tools (needed for git, brew)
# skips to next  step after invoking popup to install CLI tools, i want it to wait until setup is done
xcode-select -p &>/dev/null || xcode-select --install
# Animated spinner while waiting for Xcode CLI tools installation
spinner='|/-\'
i=0
echo -n "Waiting for Xcode CLI tools to be installed... "
while ! xcode-select -p &>/dev/null; do
  printf "\rWaiting for Xcode CLI tools to be installed... %s" "${spinner[$((i++ % ${#spinner}))]}"
  sleep 5
done
printf "\rWaiting for Xcode CLI tools to be installed... done!\n"

# 2. Homebrew (idempotent)
if ! command -v brew >/dev/null; then
  sudo -v
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f /usr/local/bin/brew ] && eval "$(/usr/local/bin/brew shellenv)"

# 3. chezmoi
brew install chezmoi

# 5. Open Apple ID preferences
open "x-apple.systempreferences:com.apple.preferences.internetaccounts"

# 6. Done
echo "🎉 Setup complete! Your dotfiles are now managed by chezmoi."

