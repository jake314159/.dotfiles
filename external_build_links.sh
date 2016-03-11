#!/bin/bash

#
# Download, link and update external scripts from other git repos
# Copy of each remote repo is stored in ./remote/ and linked to from ~/bin
#

DIR=`pwd`

if [ ! -d "./remote" ]; then
    echo "BUILD: Adding remote directory"
    mkdir "remote"
fi

cd "./remote"

# prettyjson
if [ -d "./prettyjson" ]; then
    echo "BUILD: Updating prettyjson"
    cd "./prettyjson"
    git pull
    cd "$DIR/remote"
else
    echo "BUILD: Cloning prettyjson"
    git clone git@github.com:jake314159/prettyjson.git
    rm ~/bin/prettyjson
    ln -s "$DIR/remote/prettyjson/src/prettyjson" ~/bin/prettyjson
fi

cd "$DIR"
