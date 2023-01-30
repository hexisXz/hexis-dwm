#!/bin/bash

nitrogen --restore &

picom &


vol(){
	echo "volume" && amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/'
}



battery(){
	acpi
}


dateandtime(){
	date +%r
}



while true; do
	xsetroot -name "$(vol) | $(battery) | $(dateandtime)"
	sleep 1
done &
