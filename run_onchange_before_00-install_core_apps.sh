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