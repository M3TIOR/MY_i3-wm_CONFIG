#!/bin/sh
#M3TIOR 2016

#Debug redirection unit

if ! [ -e ~/.i3/settings/debug.redirect ]; then
	mkdir -p /var/log/i3;
	echo "/var/log/i3/debug.log" > ~/.i3/settings/debug.redirect;
fi

while read line; do
	read stdin
	echo "$stdin" >> $line;
done < ~/.i3/settings/debug.redirect
