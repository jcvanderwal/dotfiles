#!/bin/bash

# OSX Preferences
defaults write -g com.apple.keyboard.fnState -boolean true
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Git
git config --global credential.helper osxkeychain
git config --global core.autocrlf input

