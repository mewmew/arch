#!/bin/bash
if ping -c 1 8.8.8.8 > /dev/null ; then
	# Use remove wallpaper.
	WALL=`walls -n 1 -sorting random -purity SFW nature`
else
	# Use local wallpaper.
	WALL=`find /home/u/resources/ -maxdepth 2 -type f | shuf -n1`
fi
echo "${WALL}"
feh --bg-fill "${WALL}"
