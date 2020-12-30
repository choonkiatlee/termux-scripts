#!/bin/bash

# install shortcuts
currentdir="$(dirname "$(readlink -f "$0")")"
cp $currentdir/shortcuts/* $HOME/.shortcuts

# install termux.properties
cp termux.properties $HOME/.termux/termux.properties