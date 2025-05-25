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

* git-town: Git Town provides additional Git commands that automate the creation, synchronization, shipping, and cleanup of Git branches

[![Git Town Introduction](https://img.youtube.com/vi/4QDgQajqxRw/maxresdefault.jpg)](https://www.youtube.com/watch?v=4QDgQajqxRw "Git Town Introduction")

* uv: An extremely fast Python package and project manager, written in Rust
    - 🚀 A single tool to replace pip, pip-tools, pipx, poetry, pyenv, twine, virtualenv, and more.
    - ⚡️ 10-100x faster than pip.
    - 🐍 Installs and manages Python versions.