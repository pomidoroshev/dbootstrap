#!/usr/bin/env bash

set -ex

# brew and friends
brew -v || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle -v

# python versions
cat pyenvs | xargs -n 1 pyenv install -s

# install poetry and ptipython for each pyenv
