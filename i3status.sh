#!/bin/bash

# Script to show current keyboard layout in i3status bar
# Requires xkb-switch 

# Inspiration for wather display:
# https://keheliya.blogspot.com/2018/01/weather-info-in-i3status.html
# Suggested crontab entry:
# */5 * * * * curl -s wttr.in/?format=3\&m > ~/.weather.cache

# For Purple air updates:
# */5 * * * * ~/bin/purple.py > /dev/null

i3status --config /home/joshua/.config/i3status/config | while :
do
	read line
	echo "$(xkb-switch) | $line" || exit 1
done

