#!/bin/bash

name="$(date +%d-%m-%Y_%H-%M-%S)"
folder="$(date +%Y-%m)"

if [ -d ~/Pictures/Screenshots/$folder ]
then
  echo "Folder exists"
else
	echo "Folder doesn't exist! Creating folder..."
	mkdir ~/Pictures/Screenshots/$folder
fi

scrot -q 100 -s -f ~/Pictures/Screenshots/$folder/$name.png

if [ -f ~/Pictures/Screenshots/$folder/$name.png ]
then 
	notify-send "Screenshot done! Name: $name"
	xclip -selection clipboard -t image/png ~/Pictures/Screenshots/$folder/$name.png
else
	notify-send "Screenshot failed..."
fi
