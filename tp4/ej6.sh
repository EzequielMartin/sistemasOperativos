#!/bin/bash

for i in {1..10}; do
	echo $i
	sleep 2
	if [ $i -eq $1 ]; then
		kill $(ps aux | grep 'ej6.sh' | awk '{print $2}')
	fi
done
