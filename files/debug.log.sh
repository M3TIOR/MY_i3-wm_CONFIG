#!/bin/sh
#M3TIOR 2016

#Debug redirection unit

#LEGACY SETTINGS
#Clear previous debug logs on load.
#while read logfile; do
#	echo "" > $logfile;
#done < ~/.i3/settings/debug.redirect

#generate new default settings if none exist.
if ! [ -e ~/.i3/settings/debug.redirect ]; then
	mkdir -p /var/log/i3;
	echo "/var/log/i3/debug.log" > ~/.i3/settings/debug.redirect;
fi



while read line; do
	read stdin;
	echo "$stdin" >> $line;
done < ~/.i3/settings/debug.redirect
