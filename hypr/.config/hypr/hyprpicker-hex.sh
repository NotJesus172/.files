#!/usr/bin/env bash

color=$(hyprpicker -f hex)

if [ -n "$color" ]; then
    echo "$color" | wl-copy
    notify-send "Hyprpicker captured $color" "$color has been copied to the clipboard"
fi