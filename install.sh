#!/usr/bin/env bash
sudo apt -y install mplayer
mkdir -p ~/.mplayer
touch  ~/.mplayer/config
echo "lirc=no" > ~/.mplayer/config