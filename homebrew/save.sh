#!/bin/bash
USERNAME=$USER
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
brew list > $DIR/brew.user.$USERNAME.list
brew cask list > $DIR/brew-cask.user.$USERNAME.list
