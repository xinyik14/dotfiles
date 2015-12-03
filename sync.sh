#!/bin/bash

PWD=$(pwd)
cp $HOME/.tmuxinator $PWD/
cp $HOME/.profile $PWD/
cp $HOME/.vimrc $PWD/
cp $HOME/.vim $PWD/
cp $HOME/.bashrc $PWD/
cp $HOME/.gitconfig $PWD/
echo "last sync at $(date)" > $PWD/sync.succeed
git add .
git commit -m "files updated"
git push origin master
