#!/bin/bash

# Pakai fade out Hyprland dulu (jika enable)
#hyprctl dispatch notify "Locking..." 3000 "" # Notifikasi (opsional)
#mpv --no-audio --fs --loop=no --no-osc --no-input-default-bindings --no-terminal ~/zoom-lock.mp4
# Tambahkan sedikit delay super pendek untuk efek halus
sleep 0.1

# Langsung jalankan Hyprlock
hyprlock
