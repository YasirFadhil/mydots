#!/bin/bash

SINK=$(pactl info | grep 'Default Sink' | awk '{print $3}')

get_volume() {
  pactl get-sink-volume "$SINK" | grep -o '[0-9]\+%' | head -1
}

get_mute() {
  pactl get-sink-mute "$SINK" | awk '{print $2}'
}

play_feedback_sound() {
  canberra-gtk-play -i audio-volume-change -d "volume-feedback" &>/dev/null &
}

case "$1" in
  up)
    pactl set-sink-volume "$SINK" +5%
    play_feedback_sound
    echo "Volume: $(get_volume)"
    ;;
  down)
    pactl set-sink-volume "$SINK" -5%
    play_feedback_sound
    echo "Volume: $(get_volume)"
    ;;
  mute)
    pactl set-sink-mute "$SINK" toggle
    if [ "$(get_mute)" = "yes" ]; then
      canberra-gtk-play -i audio-volume-muted -d "volume-feedback" &>/dev/null &
      echo "Muted"
    else
      play_feedback_sound
      echo "Unmuted - Volume: $(get_volume)"
    fi
    ;;
  status)
    if [ "$(get_mute)" = "yes" ]; then
      echo "Muted"
    else
      echo "Volume: $(get_volume)"
    fi
    ;;
  *)
    echo "Usage: $0 {up|down|mute|status}"
    ;;
esac

