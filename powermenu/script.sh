#!/bin/sh

selected=$(printf "Выключить\nПерезагрузить\nВыйти\n" | \
wofi --dmenu --cache-file /dev/null --prompt "Питание:" --width 200 --height 170)

case "$selected" in
  "Выключить")
    systemctl poweroff
    ;;
  "Перезагрузить")
    systemctl reboot
    ;;
  "Выйти")
    swaymsg exit 2>/dev/null || hyprctl dispatch exit
    ;;
esac

