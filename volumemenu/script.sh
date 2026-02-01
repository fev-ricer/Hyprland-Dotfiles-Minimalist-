#!/usr/bin/fish

# Изменяем громкость
wpctl set-volume @DEFAULT_AUDIO_SINK@ $argv[1]

# Получаем текущие данные
set VOLUME (wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}')
set MUTE (wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o "MUTED")

# Иконка и текст
if test "$MUTE" = "MUTED"; or test "$VOLUME" = "0"
    notify-send -h string:x-canonical-private-synchronous:volume -u low "Muted" -i audio-volume-muted
else
    notify-send -h string:x-canonical-private-synchronous:volume -u low "Громкость: $VOLUME%" -h int:value:"$VOLUME" -i audio-volume-high
end
