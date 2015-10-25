#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]] 
do
    arr=($line)
    site=${arr[0]}
    folder=${site%%.*}
    account=${arr[1]}
    reponame=${arr[2]}
    accountdir="$HOME/src/$folder/$account"
    repodir="$HOME/src/$folder/$account/$reponame"
    path="https://$site/$account/$reponame.git"
    if [ ! -d "$repodir" ]; then
        mkdir -p $accountdir
        pushd $accountdir
        git clone $path
        popd
    fi
done < "$1"
