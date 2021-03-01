#!/bin/bash

FILES=/var/log/apache2/*

for f in $FILES
do 
	echo "Processing $f file..."
	if [[ $f == *.log ]]; then
		#echo "we have a .log file"
		cat $f | grep -v $(wget -qO- https://ipecho.net/plain) | grep -v 192.168.1.21 
		printf "\n"
	elif [[ $f == *.gz ]]; then
		#echo "we have an archive, .gz file"
		zcat $f | grep -v $(wget -qO- https://ipecho.net/plain) | grep -v 192.168.1.21 | grep php
		printf "\n"
	
	fi

done
