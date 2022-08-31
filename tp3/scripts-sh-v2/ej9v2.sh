#!/bin/sh

cat /etc/passwd | while read line; do
	echo $line
	sleep 1
	done
