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

# Symflow Stuff

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

ensurePython38() {
  if semverLT "$($(getPythonPath) --version | cut -c8-)" "3.8.0"; then
    if hasCommand pyenv; then
      pyenv install 3.8.2
      pyenv shell 3.8.2
    elif hasCommand brew; then
      brew install python@3.8
    else
      die 'Please install Python 3.8'
    fi
  fi
}

installWithPipx() {
  echo "Using python path $(getPythonPath)"
  ensurePython38
  $(getPythonPath) -m pip install --user pipx
  # Make sure pipx binaries will be on the PATH
  $(getPythonPath) -m pipx ensurepath
  $(getPythonPath) -m pipx uninstall sym-flow-cli >/dev/null 2>&1
  $(getPythonPath) -m pipx install sym-flow-cli --force --python "$(getPythonPath)"
  $(getPythonPath) -m pipx upgrade sym-flow-cli >/dev/null 2>&1
}

installWithPipx || 
  die 'Could not install sym-flow-cli; please send us any error messages printed above.'

printf '\e[32mSuccessfully installed sym-flow-cli.\e[0m\n'

if ! hasCommand symflow; then 
  printf '\e[32mPlease restart your terminal, or run the following command to add Symflow to your path in this terminal:\e[0m\n'
  printf '\e[32m\texport PATH="$HOME/.local/bin:$PATH"\e[0m\n'
fi