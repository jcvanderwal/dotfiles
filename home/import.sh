#!/bin/bash
if [ -z "$1" ]
  then
    echo "No argument supplied"i
    exit 1
fi
mv ~/.$1 $1


