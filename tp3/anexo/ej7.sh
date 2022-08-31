#!/bin/bash

if [ -f copia ]; then
	rm copia
else
	touch copia
fi

if [ ! -f $1 ] | [ ! $# -eq 1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	cat $1 | while read linea; do
		echo $linea
		echo $linea >> copia
		sleep 3
	done
fi
