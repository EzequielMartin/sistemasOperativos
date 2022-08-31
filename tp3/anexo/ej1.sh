#!/bin/bash

if [ ! $# -eq 2 ] || [ ! -f $1 ]; then
	echo "Debe pasar un archivo y un string como parametro"
else
	if [[ $(cat $1) == *"$2"* ]]; then
		echo "Esta el string"
	else
		echo "No esta el string"
	fi
fi
