#!/bin/bash
set -euo pipefail
echo "Installing official packages..."
sudo pacman -S --needed - < official_pkgs.txt
echo "Installing AUR packages..."
yay -S --needed - < aur_pkgs.txt
echo "✅ Done restoring all packages!"
