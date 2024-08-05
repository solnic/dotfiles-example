#!/bin/bash

# Get the latest oh-my-zsh
if [ ! -d home/oh-my-zsh ]; then
  git submodule add https://github.com/ohmyzsh/ohmyzsh home/oh-my-zsh
fi

git submodule init
git submodule update

root="$(pwd)"

for file in $(ls home)
do
  source="$root/home/$file"
  target="$HOME/.$file"

  echo "Copying $source => $target"
  cp -r $source $target
done
