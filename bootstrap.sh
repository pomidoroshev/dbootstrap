#!/usr/bin/env bash

set -ex

# prepare
# sudo xcode-select --install || true

# brew and friends
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle -v

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# python versions
cat pyenvs | xargs -n 1 pyenv install -s
