#!/usr/bin/env bash

cd "$(dirname "$BASH_SOURCE")"
source ../functions/command_exist.sh

if [[ $(uname -s) == 'Darwin' ]]; then
  if ! command_exist brew; then
    echo 'Installing Homebrew...'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
elif [[ $(uname -s) == 'Linux' ]]; then
  if ! command_exist apt-get && ! command_exist pacman; then
    echo 'Linux distributions other than Debian, Ubuntu or Arch Linux are not supported.'
    exit 1
  fi
fi
