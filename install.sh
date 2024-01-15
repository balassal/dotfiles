#!/bin/bash

sudo pacman -S --needed qtile alacritty nitrogen rofi neovim zsh exa dunst thunar thunar-archive-plugin ttf-roboto ttf-jetbrains-mono-nerd networkmanager

yay -S --needed qtile-extras brave-bin variety visual-studio-code-bin flameshot

rm -rf ~/.config/alacritty/
cp -r alacritty ~/.config/
rm -rf ~/.config/dunst/
cp -r dunst ~/.config/
rm -rf ~/.config/qtile/
cp -r qtile ~/.config/
rm -rf ~/.config/rofi/
cp -r rofi ~/.config/

chmod +x ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/power_menu.sh
echo "done"