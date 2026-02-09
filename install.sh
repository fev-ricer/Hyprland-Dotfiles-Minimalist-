#!/bin/bash

# Получаем путь к папке скрипта (работает в bash)
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

echo "Installing dots from $SCRIPT_DIR..."

# Создаем конфиг-директорию, если её нет
mkdir -p ~/.config

# Список папок для копирования в ~/.config/
configs=("btop" "cava" "hypr" "kitty" "mako" "powermenu" "volumemenu" "wofi")

for folder in "${configs[@]}"; do
    if [ -d "$SCRIPT_DIR/$folder" ]; then
        cp -r "$SCRIPT_DIR/$folder" ~/.config/
        echo " [+] $folder -> ~/.config/"
    else
        echo " [!] Skip: $folder not found in repository"
    fi
done

echo "Done!"
