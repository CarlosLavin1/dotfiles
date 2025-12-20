#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures"

pgrep -x swww-daemon >/dev/null || swww-daemon &

# Pick wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \
  | wofi --dmenu --allow-images --prompt "Wallpaper")

# Exit if nothing selected
[ -z "$WALLPAPER" ] && exit 0

# Set wallpaper with smooth transition
swww img "$WALLPAPER" \
  --transition-type grow \
  --transition-fps 60 \
  --transition-duration 0.8

