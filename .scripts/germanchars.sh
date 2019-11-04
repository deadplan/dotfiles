#!/bin/sh

cat ~/.scripts/germanchars | rofi -dmenu | xclip -selection clipboard
notify-send "Character copied to clipboard."
