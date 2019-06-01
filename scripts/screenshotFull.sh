#!/bin/bash

name="$(date +%d.%m.%Y_%H:%M:%S)"
folder="$(date +%B_%Y)"

if [ -d ~/Images/Screenshots/$folder ]
then
	echo "Folder exists"
else
	echo "Folder doesn't exist! Creating folder..."
	mkdir ~/Images/Screenshots/$folder
fi

scrot -q 100 ~/Images/Screenshots/$folder/$name.png
notify-send "Screenshot done! Name: $name"
