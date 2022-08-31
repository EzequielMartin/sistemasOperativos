#!/bin/bash

#Hacer todas las letras de un archivo mayuscula y mostrarlas por pantalla una por una

if [ ! -f $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	cat $1 | while read line; do
		echo $line | tr [:lower:] [:upper:]
	done
fi
