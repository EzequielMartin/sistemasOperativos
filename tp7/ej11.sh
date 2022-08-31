#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	tamMax=0;
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			tam=$(stat $elemento -c%s)
			if [ $tam -gt $tamMax ]; then
				tamMax=$tam
				nom=$(echo $elemento | cut -d"/" -f"6")
			fi
		fi
	done
	echo "El archivo de tamaño maximo es $nom y su tamaño es $tamMax"
fi

