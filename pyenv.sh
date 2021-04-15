#!/usr/bin/env bash

set -ex

# python versions
eval "$(pyenv init -)"
# for fish
# pyenv init - | source

# install poetry and ptipython for each pyenv
cat pyenvs | while read pyver
do
   pyenv install -s --patch $pyver < <(curl -sSL https://github.com/python/cpython/commit/8ea6353.patch)
   # for fish
   # pyenv install -s --patch $pyver < (curl -sSL https://github.com/python/cpython/commit/8ea6353.patch | psub)
   pyenv shell $pyver
   pip install -U pip
   pip install -r requirements.txt
done
