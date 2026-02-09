#!/bin/bash

# 1. Остановить выполнение при ошибке
set -e

# 2. Спрашиваем о желании обновить систему
while true; do
    read -p "Want to update packages before installation? (y/n): " yn
    case $yn in
        [Yy]* ) 
            echo "Updating system..."
            sudo apt update && sudo apt upgrade
            break ;;
        [Nn]* ) 
            echo "Skkipping...."
            break ;;
        * ) 
            echo "Please, enter 'y' (yes) or 'n' (no)." ;;
    esac
done

# 3. Скрипт установки
echo "Installing dots..."

mkdir -p ~/.config
# Заходим в папку с конфигами
cd ~//Hyprland-Dotfiles-Minimalist-
# Лучше использовать относительные пути от места запуска скрипта

cp -r ./Wallpaper ~/
cp -r ./hypr ~/.config/
cp -r ./btop ~/.config/
cp -r ./wofi ~/.config/
cp -r ./volumemenu ~/.config/
cp -r ./kitty ~/.config/
cp -r ./mako ~/.config/
cp -r ./waybar ~/.config/ # Не забудь про waybar, если он есть
cp -r ./powermenu ~/.config/

# 4. Оповещение
echo "Installation has been done."
