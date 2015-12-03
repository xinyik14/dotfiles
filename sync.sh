#!/bin/bash

PWD=$(pwd)
cp $HOME/.profile $PWD/
cp $HOME/.vimrc $PWD/
cp $HOME/.bashrc $PWD/
cp $HOME/.gitconfig $PWD/
echo "last sync at $(date)" > $PWD/sync.succeed
