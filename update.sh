#!/bin/bash

DIR=$(dirname "$0")

cp -r $HOME/.config/nvim $DIR
cp -r $HOME/.config/i3status-rust $DIR
cp -r $HOME/.config/sway $DIR
cp -r $HOME/.config/tofi $DIR
cp -r $HOME/.config/ghostty $DIR
cp -r $HOME/.config/dunst $DIR
cp -r $HOME/.config/starship.toml $DIR/starship

cp $HOME/.zshrc $DIR/zsh/.zshrc
sed -i '/^## DANGER ZONE/,/^## DANGER ZONE/d' $DIR/zsh/.zshrc
