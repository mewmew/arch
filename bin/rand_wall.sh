#!/bin/bash
#if ping -c 1 8.8.8.8 > /dev/null ; then
if [ "$#" -eq 1 ] ; then
	# Use remove wallpaper.
	WALL=`walls -n 1 -sorting random -purity SFW $1`
else
	# Use local wallpaper.
	WALL=`find /home/u/resources/ -maxdepth 2 -type f | shuf -n1`
fi
echo "${WALL}"
#feh --bg-fill "${WALL}"
swaymsg output "*" bg "${WALL}" fill
