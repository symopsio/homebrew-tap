#!/bin/bash

wrapper=/usr/local/bin/virtualenvwrapper.sh
if ! [[ -f ${wrapper} ]]; then
  wrapper=$(pyenv prefix)/bin/virtualenvwrapper.sh
fi
source ${wrapper}

mktmpenv

pip install $1 homebrew-pypi-poet
poet $1

deactivate
