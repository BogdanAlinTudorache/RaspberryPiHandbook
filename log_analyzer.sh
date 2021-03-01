#!/bin/bash

FILES=/var/log/apache2/*

for f in $FILES
do 
	echo "Processing $f file..."
	if [[ $f == *.log ]]; then
		#echo "we have a .log file"
	    cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep php
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET / HTTP/1.1' 
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /manager/html/ HTTP/1.0'
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /config/getuser?index=0 HTTP/1.1' 
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /_ignition/execute-solution HTTP/1.1'
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /jenkins/login HTTP/1.0'
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /setup.cgi?next_file=netgear.cfg'
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'solr/admin/info/system?wt=json'
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep wlwmanifest.xml
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep systembc
		cat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep boaform
		
		printf "\n"
		
	elif [[ $f == *.gz ]]; then
		#echo "we have an archive, .gz file"
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep php
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET / HTTP/1.1' 
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /manager/html/ HTTP/1.0'
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /config/getuser?index=0 HTTP/1.1' 
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /_ignition/execute-solution HTTP/1.1'
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /jenkins/login HTTP/1.0'
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'GET /setup.cgi?next_file=netgear.cfg'
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep 'solr/admin/info/system?wt=json'
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep wlwmanifest.xml
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep systembc
		zcat $f | grep -v 192.168.1.21 | grep -v $(wget -qO- https://ipecho.net/plain) | grep boaform
		
		printf "\n"
	
	fi

done
