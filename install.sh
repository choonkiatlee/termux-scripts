#!/bin/bash

# install shortcuts
currentdir="$(dirname "$(readlink -f "$0")")"
cp $currentdir/shortcuts/* $HOME/.shortcuts

# install termux.properties
mkdir $HOME/.termux
cp termux.properties $HOME/.termux/termux.properties
termux-reload-settings