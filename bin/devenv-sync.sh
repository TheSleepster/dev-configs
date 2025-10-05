#!/bin/bash
echo updating .config files
PATHS=("$HOME/.config/nvim"
       "$HOME/.config/hypr"
       "$HOME/.config/wofi"
       "$HOME/.config/waybar"
       "$HOME/.config/bin"
       "$HOME/.config/ghostty"
       "$HOME/.config/gtk-3.0"
       "$HOME/.config/xfce4"
       "$HOME/.config/swaync"
       "$HOME/.config/fish"
       "$HOME/.config/sddm"
       "$HOME/.zshrc"
       "$HOME/.tmux.conf"
       "$HOME/.emacs.d"
)

echo syncing...
for path in "${PATHS[@]}"; do
    cp -R $path ../configs
done

echo complete...
