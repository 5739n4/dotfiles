
# 2. Homebrew (idempotent)
if ! command -v brew >/dev/null; then
  sudo -v
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/tty
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

