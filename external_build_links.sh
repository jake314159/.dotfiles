#!/bin/bash

#
# Download, link and update external scripts from other git repos
#

DIR=`pwd`

# prettyjson
if [ -d "./prettyjson" ]; then
    echo "BUILD: Updating prettyjson"
    cd "./prettyjson"
    git pull
    cd "$DIR"
else
    echo "BUILD: Cloning prettyjson"
    git clone git@github.com:jake314159/prettyjson.git
    rm ~/bin/prettyjson
    ln -s "$DIR/prettyjson/src/prettyjson" ~/bin/prettyjson
fi
