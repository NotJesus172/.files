#!/usr/bin/env bash

stow -d ~/.files

stow -t ~ -S bash --adopt
stow -t ~/.config -S starship --adopt
stow -t ~/.config/kitty -S kitty --adopt
stow -t ~/.config/hypr -S hypr --adopt
stow -t ~/.config/waybar -S waybar --adopt