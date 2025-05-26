#!/bin/sh

command -v brew >/dev/null 2>&1 || \
  (echo '🍺  Installing Homebrew' && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")

# exit immediately if apw is already in $PATH
type apw >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    echo '🔑  Installing apw' 
    eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"
    brew install bendews/homebrew-tap/apw && brew services restart apw
    apw auth
    ;;
Linux)
    echo "unsupported OS"
    # commands to install password-manager-binary on Linux
    ;;
*)
    echo "unsupported OS"
    exit 1
    ;;
esac
