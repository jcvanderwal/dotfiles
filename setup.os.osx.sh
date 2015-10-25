#!/bin/bash

# OSX Preferences
defaults write -g com.apple.keyboard.fnState -boolean true

# Git
git config --global credential.helper osxkeychain
