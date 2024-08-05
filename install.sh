#!/bin/bash

# Get latest oh-my-zsh
git submodule init
git submodule update

root="$(pwd)"

for file in $(ls home)
do
  source="$root/home/$file"
  target="$HOME/.$file"

  echo "Copying $source => $target"
  cp $source $target
done
