#!/bin/sh

a=$(cat $HOME/practicas/tp1/filesystem.txt | wc -l)
b=$(cat $HOME/practicas/tp1/perfil.txt | wc -l)

if [ $a -eq $b ]; then
	echo "Los archivos tienen la misma cantidad de lineas"
else
	if [ $a -gt $b ]; then
		echo "El primer archivo tiene mas lineas"
	else
		echo "El segundo archivo tiene mas lineas"
	fi
fi
echo "La cantidad de lineas del primer archivo es $a"
echo "La cantidad de lineas del segundo archivo es $b"
