#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		tam=$(stat -c%s $elemento)
		nom=$(echo $elemento | awk -F/ '{print $NF}')
		echo "El tamaño del fichero $nom es $tam bytes"
	done
fi
