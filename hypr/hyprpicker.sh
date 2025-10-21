#!/usr/bin/env bash

color=$(hyprpicker)

if [ -n "$color" ]; then
    echo "$color" | wl-copy
    notify-send "Hyprpicker captured $color" "$color has been copied to the clipboard"
fi