#!/bin/sh

# exit immediately if apw is already in $PATH
type apw >/dev/null 2>&1 && exit

case "$(uname -s)" in
Darwin)
    eval "$(/opt/homebrew/bin/brew shellenv || /usr/local/bin/brew shellenv)"
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
