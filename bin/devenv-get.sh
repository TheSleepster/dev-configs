#!/bin/bash

sudo pacman -S --noconfirm --needed nvim emacs rofi-wayland waybar hyprland ghostty thunar zsh tmux swaync swaybg

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

