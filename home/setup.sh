#!/bin/bash
find . -name ".*" -type f |while read fname; do
    echo "$fname"
    ln -s -f "$(pwd)/$fname" ~/$fname
done
