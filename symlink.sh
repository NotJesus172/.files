#!/usr/bin/env bash

sudo mkdir -p ~/.config/kitty

rm -rf ~/.bashrc
ln -s ~/.files/.bashrc ~/.bashrc
rm -rf ~/.config/kitty/kitty.conf
ln -s ~/.files/kitty.conf ~/.config/kitty/kitty.conf
rm -rf ~/.config/starship.toml
ln -s ~/.files/starship.toml ~/.config/starship.toml
rm -rf ~/.config/hypr
ln -s ~/.files/hypr ~/.config/hypr

