## dotfiles

### install 
* homebrew 
* chezmoi
* apply these dotfiles, incl. [Brewfile](Brewfile)

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"
brew install chezmoi
chezmoi init --apply 5739n4
```

### what's being installed?
* atuin: ✨ Magical shell history
    - store shell history in a sqlite database
    - enter to execute a command, tab to edit

    ![atuin animated demo](https://raw.githubusercontent.com/atuinsh/atuin/main/demo.gif "atuin animated demo")

* git-town: Git Town provides additional Git commands that automate the creation, synchronization, shipping, and cleanup of Git branches

    [![Git Town Introduction](https://img.youtube.com/vi/4QDgQajqxRw/maxresdefault.jpg)](https://www.youtube.com/watch?v=4QDgQajqxRw "Git Town Introduction")

* uv: An extremely fast Python package and project manager, written in Rust
    - 🚀 A single tool to replace pip, pip-tools, pipx, poetry, pyenv, twine, virtualenv, and more.
    - ⚡️ 10-100x faster than pip.
    - 🐍 Installs and manages Python versions.

* slack
* loom
* orbstack: Fast, light, simple Docker & Linux
    ![orbstack containers screenshot](https://orbstack.dev/_next/image?url=%2Fimg%2Fhero.png&w=1920&q=75)
