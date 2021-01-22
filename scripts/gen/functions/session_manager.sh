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
