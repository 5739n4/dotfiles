## dotfiles

### install homebrew, chezmoi and apply this repo
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
eval "$(/opt/homebrew/bin/brew shellenv)" && \
brew install chezmoi && \
chezmoi init --apply 5739n4
```

### what's being installed?
* atuin: ✨ Magical shell history
![atuin animated demo](https://raw.githubusercontent.com/atuinsh/atuin/main/demo.gif "atuin animated demo")

