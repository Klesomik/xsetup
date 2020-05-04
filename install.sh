#!/bin/bash

cd ~/src
git clone https://github.com/Klesomik/xsetup

# create symlinks
ln -s ~/src/xsetup/bin ~/bin
ln -s ~/src/xsetup/dotfiles ~/dotfiles