#!/bin/bash

echo syncing...
cp -R ~/.config/nvim    ../configs
cp -R ~/.config/hypr    ../configs
cp -R ~/.config/rofi    ../configs
cp -R ~/.config/waybar  ../configs
cp -R ~/.config/bin     ../configs
cp -R ~/.config/ghostty ../configs
cp -R ~/.config/gtk-3.0 ../configs
cp -R ~/.config/xfce4   ../configs
cp -R ~/.emacs.d        ../configs

cp ~/.zshrc ../configs
cp ~/.tmux.conf ../configs

echo complete...
