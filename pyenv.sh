#!/usr/bin/env bash

set -ex

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

# python versions
cat pyenvs | xargs -n 1 pyenv install -s
eval "$(pyenv init -)"

# install poetry and ptipython for each pyenv
cat pyenvs | while read pyver
do
   pyenv shell $pyver
   pip install -r requirements.txt
done
