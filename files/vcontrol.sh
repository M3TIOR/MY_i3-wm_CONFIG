#!/bin/sh
#M3TIOR 2015

if [ ! -e ~/.i3/settings/volume ]; then
	echo "50" > ~/.i3/settings/volume;
fi

v=$(cat ~/.i3/settings/volume);
case $1 in
	"up")
		v=$(($v + 5));
		if [ $v -gt 100 ]; then
			v=100;
		fi
		echo "v = $v";
		pactl set-sink-volume 0 "$v%";
		echo "Volume Raised";
	;;
	"down")
		v=$(($v - 5));
		if [ $v -lt 0 ]; then
			v=0;
		fi
		echo "v = $v";
		pactl set-sink-volume 0 "$v%";
		echo "Volume Lowered";
	;;
	"mute")
		v=0;
		echo "Volume Muted";
		pactl set-sink-volume 0 "$v%";
	;;
esac
echo $v > ~/.i3/settings/volume;
