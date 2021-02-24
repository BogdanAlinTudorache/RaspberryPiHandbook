#!/bin/bash

while true; do
	echo CPU Temperature: `bc <<< "scale=2; $(cat /sys/class/thermal/thermal_zone0/temp)/1000"`\'C
	sleep 2
done
	
