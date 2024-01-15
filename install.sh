#!/bin/bash

echo " >>> 1/3 - install packages <<<"

sudo pacman -S --needed qtile alacritty nitrogen rofi vim neovim zsh exa dunst thunar thunar-archive-plugin ttf-roboto ttf-jetbrains-mono-nerd networkmanager

yay -S --needed qtile-extras brave-bin variety visual-studio-code-bin flameshot

echo " >>> 2/3 zsh plugins <<<"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

echo " >>> 3/3 copy files <<<"

rm -rf ~/.config/alacritty/
cp -r alacritty ~/.config/
rm -rf ~/.config/dunst/
cp -r dunst ~/.config/
rm -rf ~/.config/qtile/
cp -r qtile ~/.config/
rm -rf ~/.config/rofi/
cp -r rofi ~/.config/
rm ~/.zshrc
cp .zshrc ~/
rm -rf ~/wallpapers
cp -r wallpapers ~/wallpapers

chmod +x ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/power_menu.sh

echo " >>> done <<<"