#!/bin/bash
STATE=$(cat /home/lukas/LocalDocuments/Scripts/screen-state.txt)
echo $STATE
if [ "$STATE" = "off" ]; then
	xrandr --output HDMI-0 --auto --left-of DP-0 --priamry
	echo "on" > /home/lukas/LocalDocuments/Scripts/screen-state.txt
else
	xrandr --output HDMI-0 --off
	echo "off" > /home/lukas/LocalDocuments/Scripts/screen-state.txt
fi
