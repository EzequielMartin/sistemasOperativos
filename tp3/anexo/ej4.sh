#!/bin/bash

if [ -f word ]; then
	rm word
else
 	touch word
fi

if [ ! $1 ]; then
	echo "Debe pasar un parametro"
else
	for (( i=0; i<10; i++ )); do
		echo $1
	done
	echo $1 > word
fi
