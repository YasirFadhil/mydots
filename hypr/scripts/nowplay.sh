#!/bin/bash

status=$(playerctl status 2>/dev/null)
[[ "$status" != "Playing" && "$status" != "Paused" ]] && exit 0

player=$(playerctl -l 2>/dev/null | head -n 1)
title=$(playerctl metadata title 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)

# Deteksi ikon berdasarkan nama player
case "$player" in
*spotify*) icon=" Spotify: " ;;
*firefox* | *brave* | *chromium* | *chrome*) icon=" YouTube: " ;;
*vlc*) icon="嗢 VLC: " ;;
*mpv*) icon=" MPV: " ;;
*kdeconnect*) icon=" KDE Connect: " ;;
*) icon=" Playing: " ;;
esac

if [[ -n "$artist" ]]; then
  echo "$icon $artist - $title"
else
  echo "$icon $title"
fi
