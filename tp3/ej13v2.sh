#!/bin/bash

if [ ! -d $1 ] || [ ! -d $2 ] || [ ! $# -eq 2 ]; then
	echo "Debe pasar dos directorios como parametro"
else
	tam1=$(stat -c%s $1)
	tam2=$(stat -c%s $2)
	if [ $tam1 -gt $tam2 ]; then
		echo "El primer directorio tiene mas tamaño"
	else
	if [ $tam1 -lt $tam2 ]; then
		echo "El segundo directorio tiene mas tamaño"
	else
		echo "Ambos directorios pesan lo mismo"
	fi
	fi
fi
