#!/bin/bash

# OSX Preferences
defaults write -g com.apple.keyboard.fnState -boolean true
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 4

# Git
git config --global credential.helper osxkeychain
git config --global core.autocrlf input

