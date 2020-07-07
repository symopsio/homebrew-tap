#!/bin/bash

source /usr/local/bin/virtualenvwrapper.sh

mktmpenv

pip install sym-cli homebrew-pypi-poet
poet sym-cli

deactivate
