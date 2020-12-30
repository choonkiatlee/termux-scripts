#!/bin/bash
currentdir="$(dirname "$(readlink -f "$0")")"
termuxScriptsDir="$(dirname $currentdir)"
cp $termuxScriptsDir/* $HOME/.shortcuts