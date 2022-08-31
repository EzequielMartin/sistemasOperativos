#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	if [ -f primeras5lineas.txt ]; then
		rm primeras5lineas.txt
	fi
	touch primeras5lineas.txt
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			head -5 $elemento >> primeras5lineas.txt
		fi
	done
fi
