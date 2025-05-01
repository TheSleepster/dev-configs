#!/bin/bash

echo moving back to .config...

cp -R ../configs/nvim     ~/.config
cp -R ../configs/hypr     ~/.config
cp -R ../configs/rofi     ~/.config
cp -R ../configs/waybar   ~/.config
cp -R ../configs/bin      ~/.config
cp -R ../configs/ghostty  ~/.config
cp -R ../configs/gtk-3.0  ~/.config
cp -R ../configs/xfce4    ~/.config
cp -R ../configs/.emacs.d ~/

cp ../configs/.zshrc ~/ 
cp ../configs/.tmux.conf ~/ 

echo complete...
