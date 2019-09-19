#!/bin/bash

GIT_URL=https://github.com/jwilm/alacritty.git
CLONE_DIR=~/docs/software/
LOCAL_BIN=~/.local/bin
BIN_PATH=target/release/alacritty

pushd $CLONE_DIR

git clone $GIT_URL
cd $(basename $GIT_URL .git)

cargo build --release

if [ -f $BIN_PATH ]; then
    BIN_PATH=$PWD/$BIN_PATH

    pushd $LOCAL_BIN
    ln -s $BIN_PATH alacritty
else
    echo "error: ${BIN_PATH} doesn't exist"
    exit 1
fi;
