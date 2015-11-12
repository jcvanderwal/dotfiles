#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
while read package; do
    brew install $package
done < $dir/brew.list
while read package; do
    brew cask install $package 
done < $dir/brew.cask.list
