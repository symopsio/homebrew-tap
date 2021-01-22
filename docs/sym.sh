#!/bin/bash

# THIS SCRIPT IS GENERATED. DO NOT EDIT DIRECTLY.

# https://github.com/cloudflare/semver_bash/blob/master/semver.sh
semverParseInto() {
  local RE='[^0-9]*\([0-9]*\)[.]\([0-9]*\)[.]\([0-9]*\)\([0-9A-Za-z-]*\)'
  #MAJOR
  eval $2=$(echo $1 | sed -e "s#$RE#\1#")
  #MINOR
  eval $3=$(echo $1 | sed -e "s#$RE#\2#")
  #MINOR
  eval $4=$(echo $1 | sed -e "s#$RE#\3#")
  #SPECIAL
  eval $5=$(echo $1 | sed -e "s#$RE#\4#")
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

  if [[ $MAJOR_A -le $MAJOR_B && $MINOR_A -lt $MINOR_B ]]; then
    return 0
  fi

  if [[ $MAJOR_A -le $MAJOR_B && $MINOR_A -le $MINOR_B && $PATCH_A -lt $PATCH_B ]]; then
    return 0
  fi

  if [[ "_$SPECIAL_A" == "_" ]] && [[ "_$SPECIAL_B" == "_" ]]; then
    return 1
  fi
  if [[ "_$SPECIAL_A" == "_" ]] && [[ "_$SPECIAL_B" != "_" ]]; then
    return 1
  fi
  if [[ "_$SPECIAL_A" != "_" ]] && [[ "_$SPECIAL_B" == "_" ]]; then
    return 0
  fi

  if [[ "_$SPECIAL_A" < "_$SPECIAL_B" ]]; then
    return 0
  fi

  return 1

}

# Sym Stuff

TMP_SYM=/tmp/sym

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

ensureCommandLineTools() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    xcode-select --install >/dev/null 2>&1
  fi
}

ensureSymTmp() {
  mkdir -p $TMP_SYM
}

ensurePython38() {
  if semverLT "$($(getPythonPath) --version | cut -c8-)" "3.8.0"; then
    if hasCommand pyenv; then
      pyenv install 3.8.2
      pyenv shell 3.8.2
    elif hasCommand brew; then
      brew install python@3.8
    else
      echo -e "Sym depends on a modern version of Python.\nWe can manage this install for you, but need you to first install a tool called pyenv.\nPlease visit https://github.com/pyenv/pyenv-installer."
      die "Could not install Python. See the above instructions or manually install Python 3.8."
    fi
  fi
}

installWithPipx() {
  LOG_DIR=$TMP_SYM/logs/sym-cli/pipx
  mkdir -p "$LOG_DIR"

  echo "Using python path $(getPythonPath)"
  ensurePython38

  echo "Setting up pipx"
  $(getPythonPath) -m pip install -U --user pipx >"$LOG_DIR/init" 2>&1
  # Make sure pipx binaries will be on the PATH
  $(getPythonPath) -m pipx ensurepath >"$LOG_DIR/ensurepath" 2>&1

  echo "Installing sym (takes around a minute)"
  $(getPythonPath) -m pipx uninstall sym-cli >"$LOG_DIR/uninstall" 2>&1
  if $(getPythonPath) -m pipx install sym-cli --force --python "$(getPythonPath)" >"$LOG_DIR/install" 2>&1; then
    $(getPythonPath) -m pipx upgrade --force sym-cli >"$LOG_DIR/upgrade" 2>&1
    success "sym version $($HOME/.local/bin/sym version) installed!"
  else
    if hasCommand sym; then
      die "Sym has been manually installed to $(which sym). Please uninstall that version and try again."
    else
      echo "Installing Sym with pipx failed."
      return 1
    fi
  fi
}

installWithBrew() {
  if ! hasCommand brew; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
      echo "We couldn't find brew on your path, but we strongly recommend you install it!"
    fi
    return 1
  fi
  brew install symopsio/tap/sym
  brew upgrade symopsio/tap/sym >/dev/null 2>&1
}

installWithPkg() {
  if ! hasCommand installer; then
    return 1
  fi
  curl -L -o $TMP_SYM/sym-cli-darwin-x64.pkg "https://github.com/symopsio/sym-cli-releases/releases/latest/download/sym-cli-darwin-x64.pkg"
  sudo installer -pkg $TMP_SYM/sym-cli-darwin-x64.pkg -target /
}

installWithDeb() {
  if ! hasCommand dpkg; then
    echo 'Unable to install session-manager-plugin on linux without dpkg.'
    return 1
  fi
  curl -L -o $TMP_SYM/sym-cli-linux-x64.deb "https://github.com/symopsio/sym-cli-releases/releases/latest/download/sym-cli-linux-x64.deb"
  sudo dpkg -i $TMP_SYM/sym-cli-linux-x64.deb
}

installSessionManagerPlugin() {
  if hasCommand session-manager-plugin; then
    echo 'session-manager-plugin already installed!'
    return
  fi

  if [[ "$OSTYPE" == "linux"* ]]; then
    if hasCommand dpkg; then
      curl -L -o $TMP_SYM/session-manager-plugin.deb "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb"
      sudo dpkg -i $TMP_SYM/session-manager-plugin.deb
    else
      echo 'Unable to install session-manager-plugin without dpkg. Please install dpkg and try again.'
      return 1
    fi
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    curl -L -o $TMP_SYM/sessionmanager-bundle.zip "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip"
    unzip -d $TMP_SYM $TMP_SYM/sessionmanager-bundle.zip
    echo 'Installing session-manager-plugin...'
    if ! sudo $TMP_SYM/sessionmanager-bundle/install; then
      echo "Installing session-manager-plugin plugin failed!"
      return 1
    fi
  else
    echo 'Unable to automatically install session-manager-plugin.'
    return 1
  fi
}


# Let's do this!

ensureSymTmp
ensureCommandLineTools

installWithBrew ||
  installWithPkg ||
  installWithDeb ||
  installWithPipx ||
  die 'Could not install sym. Please send us any error messages printed above.'

installSessionManagerPlugin ||
  die "Successfully installed sym-cli but could not install session-manager-plugin. \`sym ssh\` won't work.\nTo fix, please follow the instructions listed at: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"


success 'Successfully installed sym.'

if ! hasCommand sym; then
  success 'Please restart your terminal, or run the following command to add `sym` to your path in this terminal:'
  echo -e "\texport PATH=\"\$HOME/.local/bin:\$PATH\""
fi
