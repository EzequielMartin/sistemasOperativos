#!/bin/bash

for elemento in $1/*; do
	if [ $(stat --format %y $elemento | cut -d"-" -f 2) -eq $2 ]; then
		echo "El archivo $elemento fue modificado el mes $2"
	fi
done
