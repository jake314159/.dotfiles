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

function load_repo {
    # ARG1 Repo name: The directory name git clone will create (eg. prettyjson)
    # ARG2 link path: The path in the repo for the script (eg. "src/prettyjson")
    # ARG3 Repo url: URL to the repo (eg. "git@github.com:jake314159/prettyjson.git")
    if [ -d "./$1" ]; then
        echo "BUILD: Updating $1"
        cd "./$1"
        git pull
        cd "$DIR/remote"
    else
        echo "BUILD: Cloning $1"
        git clone $3
        rm ~/bin/$1
        ln -s "$DIR/remote/$1/$2" ~/bin/$1
    fi
}

load_repo "prettyjson" "src/prettyjson" "git@github.com:jake314159/prettyjson.git"

cd "$DIR"
