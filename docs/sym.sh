#!/bin/bash

# https://github.com/cloudflare/semver_bash/blob/master/semver.sh
semverParseInto() {
    local RE='[^0-9]*\([0-9]*\)[.]\([0-9]*\)[.]\([0-9]*\)\([0-9A-Za-z-]*\)'
    #MAJOR
    eval $2=`echo $1 | sed -e "s#$RE#\1#"`
    #MINOR
    eval $3=`echo $1 | sed -e "s#$RE#\2#"`
    #MINOR
    eval $4=`echo $1 | sed -e "s#$RE#\3#"`
    #SPECIAL
    eval $5=`echo $1 | sed -e "s#$RE#\4#"`
}

semverEQ() {
    local MAJOR_A=0
    local MINOR_A=0
    local PATCH_A=0
    local SPECIAL_A=0

    local MAJOR_B=0
    local MINOR_B=0
    local PATCH_B=0
    local SPECIAL_B=0

    semverParseInto $1 MAJOR_A MINOR_A PATCH_A SPECIAL_A
    semverParseInto $2 MAJOR_B MINOR_B PATCH_B SPECIAL_B

    if [ $MAJOR_A -ne $MAJOR_B ]; then
        return 1
    fi

    if [ $MINOR_A -ne $MINOR_B ]; then
        return 1
    fi

    if [ $PATCH_A -ne $PATCH_B ]; then
        return 1
    fi

    if [[ "_$SPECIAL_A" != "_$SPECIAL_B" ]]; then
        return 1
    fi


    return 0

}

semverLT() {
    local MAJOR_A=0
    local MINOR_A=0
    local PATCH_A=0
    local SPECIAL_A=0

    local MAJOR_B=0
    local MINOR_B=0
    local PATCH_B=0
    local SPECIAL_B=0

    semverParseInto $1 MAJOR_A MINOR_A PATCH_A SPECIAL_A
    semverParseInto $2 MAJOR_B MINOR_B PATCH_B SPECIAL_B

    if [ $MAJOR_A -lt $MAJOR_B ]; then
        return 0
    fi

    if [[ $MAJOR_A -le $MAJOR_B  && $MINOR_A -lt $MINOR_B ]]; then
        return 0
    fi

    if [[ $MAJOR_A -le $MAJOR_B  && $MINOR_A -le $MINOR_B && $PATCH_A -lt $PATCH_B ]]; then
        return 0
    fi

    if [[ "_$SPECIAL_A"  == "_" ]] && [[ "_$SPECIAL_B"  == "_" ]] ; then
        return 1
    fi
    if [[ "_$SPECIAL_A"  == "_" ]] && [[ "_$SPECIAL_B"  != "_" ]] ; then
        return 1
    fi
    if [[ "_$SPECIAL_A"  != "_" ]] && [[ "_$SPECIAL_B"  == "_" ]] ; then
        return 0
    fi

    if [[ "_$SPECIAL_A" < "_$SPECIAL_B" ]]; then
        return 0
    fi

    return 1

}

# Sym Stuff

die() {
  printf "\e[31m%s\e[0m\n" "$@" >&2
  exit 1
}

hasCommand() {
  [ -x "$(command -v "$1")" ]
}

getPythonPath() {
  command -v python3.8 || command -v python3 || command -v python
}

ensureBrew() {
  if ! hasCommand brew; then
    eval "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    set +u    # Undo `set -u` that install.sh does.
    eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
  fi
}

ensurePipx() {
  if ! hasCommand pipx; then
    $(getPythonPath) -m pip install --user pipx
    $(getPythonPath) -m pipx ensurepath
  fi
}

ensurePython38() {
  if semverLT "$($(getPythonPath) --version | cut -c8-)" "3.8.0"; then
    if hasCommand pyenv; then
      pyenv install 3.8.2
      pyenv shell 3.8.2
    else
      ensureBrew
      brew install python@3.8
    fi
  fi
}

installWithPipx() {
  ensurePython38
  ensurePipx
  pipx install sym-cli --python "$(getPythonPath)"
  pipx upgrade sym-cli >/dev/null 2>&1
}

installWithBrew() {
  ensureBrew
  brew install symopsio/tap/sym
  brew upgrade symopsio/tap/sym >/dev/null 2>&1
}

installSessionManagerPlugin() {
  if ! hasCommand session-manager-plugin; then
    hasCommand brew && brew cask install session-manager-plugin
  fi
}

installWithPipx || installWithBrew ||
  die 'Could not install sym-cli; please send us any error messages printed above.'

installSessionManagerPlugin ||
  die 'Successfully installed sym-cli but could not install session-manager-plugin;' "sym ssh won't work. To fix, please follow the instructions listed at:" https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html

printf '\e[32mSuccessfully installed sym-cli.\e[0m\n'
