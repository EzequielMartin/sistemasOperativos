#!/bin/bash

if [ ! -f $1 ]; then
	echo "El primer parametro debe ser un archivo"
fi
if [ ! -f $2 ]; then
	echo "El segundo parametro debe ser un archivo"
fi

a=$( cat $1 | wc -l )
b=$( cat $2 | wc -l )

if [ $a -eq $b ]; then
	echo "Los archivos tienen la misma cantidad de lineas"
else
	if [ $a -gt $b ]; then
		echo "El primer archivo tiene mas lineas"
	else
		echo "El segundo archivo tiene mas lineas"
	fi
fi
echo "El primer archivo tiene $a lineas"
echo "El segundo archivo tiene $b lineas"
