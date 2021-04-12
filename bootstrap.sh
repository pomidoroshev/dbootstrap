#!/usr/bin/env bash

set -ex

sudo xcode-select --install || true

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle

cat pyenvs | xargs -n 1 pyenv install -s
