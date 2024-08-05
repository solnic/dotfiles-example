#!/bin/bash

# Get the latest oh-my-zsh
git submodule add https://github.com/ohmyzsh/ohmyzsh home/oh-my-zsh

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
