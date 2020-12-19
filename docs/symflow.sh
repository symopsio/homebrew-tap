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

success() {
  printf "\e[32m%s\e[0m\n" "$@" >&2
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
  LOG_DIR=/tmp/logs/sym-flow-cli/pipx
  mkdir -p "$LOG_DIR"

  echo "Using python path $(getPythonPath)"
  ensurePython38

  echo "Setting up pipx"
  $(getPythonPath) -m pip install -U --user pipx >"$LOG_DIR/init" 2>&1
  # Make sure pipx binaries will be on the PATH
  $(getPythonPath) -m pipx ensurepath >"$LOG_DIR/ensurepath" 2>&1

  echo "Installing symflow (takes around a minute)"
  $(getPythonPath) -m pipx uninstall sym-flow-cli >"$LOG_DIR/uninstall" 2>&1
  if $(getPythonPath) -m pipx install sym-flow-cli --force --python "$(getPythonPath)" >"$LOG_DIR/install" 2>&1; then
    $(getPythonPath) -m pipx upgrade --force sym-flow-cli >"$LOG_DIR/upgrade" 2>&1
    success "symflow version $(symflow version) installed!"
  else
    if hasCommand sym; then
      die "Sym has been manually installed to $(which symflow). Please uninstall that version and try again."
    else
      echo "Installing Sym with pipx failed."
      return 1
    fi
  fi
}

installWithPipx ||
  die 'Could not install symflow; please send us any error messages printed above.'

success 'Successfully installed symflow.'

if ! hasCommand symflow; then
  success 'Please restart your terminal, or run the following command to add `symflow` to your path in this terminal:'
  echo "\texport PATH='\$HOME/.local/bin:\$PATH'"
fi
