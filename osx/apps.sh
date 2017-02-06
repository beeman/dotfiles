#!/usr/bin/env bash
set -eu

#
# Application installer (via brew-cask)
#

# Apps
apps=(
  alfred
  1password
  dropbox
  firefox
  spotify
  iterm2
  atom
  flux
  vlc
  skype
)

# Specify the location of the apps
appdir="/Applications"

main() {

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # link with alfred
  alfred
  cleanup
}

alfred() {
  brew cask alfred link
}

cleanup() {
  brew cleanup
}

main "$@"
exit 0
