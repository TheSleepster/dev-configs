#!/bin/bash
set -euo pipefail

CONFIG_DIRS=(
  nvim hypr rofi waybar bin ghostty gtk-3.0 xfce4 wofi swaync fish sddm
)

HOME_FILES=(".zshrc" ".tmux.conf" ".emacs.d")
CONFIG_SRC="../configs"

echo "Updating .config directories..."

# Ensure all paths exist
for dir in "${CONFIG_DIRS[@]}"; do
  mkdir -p "$HOME/.config/$dir"
done

echo "Cleaning old configs..."
for dir in "${CONFIG_DIRS[@]}"; do
  rm -rf "$HOME/.config/$dir"
done
for file in "${HOME_FILES[@]}"; do
  rm -rf "$HOME/$file"
done

echo "Copying new configs..."
for dir in "${CONFIG_DIRS[@]}"; do
  cp -R "$CONFIG_SRC/$dir" "$HOME/.config/" 2>/dev/null || true
done
for file in "${HOME_FILES[@]}"; do
  cp -R "$CONFIG_SRC/$file" "$HOME/" 2>/dev/null || true
done

echo "Reloading environment..."
zsh "$HOME/.zshrc"
hyprctl reload || true
tmux source "$HOME/.tmux.conf" 2>/dev/null || true

echo "Done."
