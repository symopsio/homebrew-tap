#!/bin/bash

wrapper=/usr/local/bin/virtualenvwrapper.sh
if ! [[ -f ${wrapper} ]]; then
  wrapper=$(pyenv prefix)/bin/virtualenvwrapper.sh
fi
source ${wrapper}

# Flush caches
mktmpenv >/dev/null 2>&1
pip install --no-cache-dir -U $1 >/dev/null 2>&1
deactivate >/dev/null 2>&1

# Real Deal
mktmpenv
pip install --no-cache-dir -U $1 homebrew-pypi-poet
poet $1
deactivate
