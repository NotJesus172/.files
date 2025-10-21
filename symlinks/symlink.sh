#!/usr/bin/env bash

stow -d ~/.files

stow -t ~ -S bash
stow -t ~/.config -S starship
stow -t ~/.config/kitty -S kitty
stow -t ~/.config/hypr -S hypr
stow -t ~/.config/waybar -S waybar