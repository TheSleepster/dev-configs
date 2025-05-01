#!/bin/bash

echo updating .config files

echo cleaning...

rm -rf ~/.config/nvim
rm -rf ~/.config/hypr   
rm -rf ~/.config/rofi
rm -rf ~/.config/waybar
rm -rf ~/.config/bin 
rm -rf ~/.config/ghostty 
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/xfce4
rm -rf ~/.emacs.d

rm -f ~/.zshrc
rm -f ~/.tmux.conf

echo complete...

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

exec /bin/zsh ~/.zshrc

exec hyprctl reload
exec tmux source ~/.tmux.conf
