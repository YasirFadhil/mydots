#!/bin/bash

# Cek dependensi pamixer
if ! command -v pamixer &> /dev/null; then
  echo "pamixer tidak ditemukan. Silakan install dengan: sudo pacman -S pamixer"
  exit 1
fi

case "$1" in
  up)
    pamixer --increase 5
    ;;
  down)
    pamixer --decrease 5
    ;;
  mute)
    pamixer --toggle-mute
    ;;
  status)
    vol=$(pamixer --get-volume)
    mute=$(pamixer --get-mute)
    if [ "$mute" = "true" ]; then
      echo "Muted"
    else
      echo "Volume: $vol%"
    fi
    ;;
  *)
    echo "Penggunaan: $0 {up|down|mute|status}"
    exit 1
    ;;
esac

