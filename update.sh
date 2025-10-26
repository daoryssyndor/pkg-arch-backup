#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
pacman -Qqn > official_pkgs.txt
pacman -Qqm > aur_pkgs.txt
pacman -Qq  > all_packages.txt

git pull --rebase --autostash || true
git add -A
git commit -m "update $(date -Iseconds)" || true
git push
