#!/bin/bash
while read f; do
  ln -s -f "$(pwd)/$f" ~/.$f
done <file.list
