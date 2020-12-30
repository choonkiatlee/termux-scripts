#!/bin/bash
currentdir="$(dirname "$(readlink -f "$0")")"
cp $currentdir/* $HOME/.shortcuts