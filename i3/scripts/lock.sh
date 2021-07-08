#!/bin/sh

img=/tmp/i3lock.png

convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) ~/.config/i3/feh/Wallpaper.png $img

i3lock -u -i $img

