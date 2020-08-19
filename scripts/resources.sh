#!/bin/bash

wrapper=/usr/local/bin/virtualenvwrapper.sh
if ! [[ -f ${wrapper} ]]; then
  wrapper=$(pyenv prefix)/bin/virtualenvwrapper.sh
fi
source ${wrapper}

mktmpenv

pip install sym-cli homebrew-pypi-poet
poet sym-cli

deactivate
