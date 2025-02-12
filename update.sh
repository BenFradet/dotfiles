#!/bin/bash

DIR=$(dirname "$0")

cp -r $HOME/.config/nvim $DIR
cp -r $HOME/.config/i3status-rust $DIR
cp -r $HOME/.config/sway $DIR
cp -r $HOME/.config/tofi $DIR
cp -r $HOME/.config/ghostty $DIR
cp -r $HOME/.config/swaync $DIR
cp -r $HOME/.config/starship.toml $DIR/starship
cp -r $HOME/.config/btop $DIR
cp -r $HOME/.config/swaylock $DIR
cp -r $HOME/.config/superfile $DIR

cp $HOME/.zshrc $DIR/zsh/.zshrc
sed -i '/^## DANGER ZONE/,/^## DANGER ZONE/d' $DIR/zsh/.zshrc
