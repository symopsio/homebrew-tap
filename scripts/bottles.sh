#!/bin/bash

BINTRAY_ROOT=https://dl.bintray.com/symopsio/bottles-tap
BINTRAY_USER=symopsio
TAP=symopsio/tap

brew uninstall $1

brew test-bot --root-url=$BINTRAY_ROOT --bintray-org=$BINTRAY_USER --tap=$TAP $TAP/$1
brew pr-upload --bintray-org=$BINTRAY_USER --root-url=$BINTRAY_ROOT
