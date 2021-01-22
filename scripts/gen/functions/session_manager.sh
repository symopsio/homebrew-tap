installSessionManagerPlugin() {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if hasCommand dpkg; then
      curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
      sudo dpkg -i session-manager-plugin.deb
      rm session-manager-plugin.deb
    else
      echo 'Unable to install session-manager-plugin on linux without dpkg.'
    fi
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip" -o "sessionmanager-bundle.zip"
    unzip sessionmanager-bundle.zip
    echo 'Installing session-manager-plugin...'
    if ! sudo ./sessionmanager-bundle/install -i /usr/local/sessionmanagerplugin -b /usr/local/bin/session-manager-plugin; then
      echo "Installing session-manager-plugin plugin failed! sym-cli will still work, but SSH may not."
    fi
    rm sessionmanager-bundle.zip
    rm -rf ./sessionmanager-bundle
  else
    echo 'Unable to install session-manager-plugin on this operation system.'
    return 1
  fi
}
