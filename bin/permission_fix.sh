#!/bin/bash
if [ $# -ne 1 ]; then
	echo "usage: $0 PATH"
	exit 1
fi

if [ -d "$1" ]; then
	echo "changing permissions on directory: \"$1\""
	find "$1" -type d -print0 | xargs -0 chmod 755
	find "$1" -type f -print0 | xargs -0 chmod 644
elif [ -f "$1" ]; then
	echo "changing permission on file: \"$1\""
	chmod 644 "$1"
else
	echo "no action performed for: \"$1\""
fi
