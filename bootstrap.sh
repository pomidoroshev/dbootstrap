#!/usr/bin/env bash

set -ex

# brew and friends
brew -v || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle -v

./pyenv.sh
