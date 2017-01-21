#!/usr/bin/env bash

cd "$(dirname "$0")"

git submodule init
git submodule update

DOTS=$(ls -a | grep "^\.[a-z]" | grep -v "^\.git$")

for f in $DOTS
do
    echo "Linking $f"
    ln -v -s `pwd`/$f ~
done

