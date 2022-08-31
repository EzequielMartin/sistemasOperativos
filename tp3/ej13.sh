#!/bin/bash

if [ ! $# -eq 2 ]; then
	echo "Debe ingresar 2 parametros"
else
	if [ ! -f $1 ] || [ ! -f $2 ]; then
		echo "Los parametros deben ser archivos"
	else
		tam1=$(stat --format %s $1)
		tam2=$(stat --format %s $2)

		if [ $tam1 -eq $tam2 ]; then
			echo "Ambos archivos pesan lo mismo"
		else
			if [ $tam1 -gt $tam2 ]; then
				echo "El primer archivo es mas pesado"
			else
				echo "El segundo archivo es mas pesado"
			fi

		echo "El tamaño del primer archivo es $tam1 bytes"
		echo "El tamaño del segundo archivo es $tam2 bytes"

		fi
	fi
fi
