#!/bin/sh

if [ -d $1 ]; then

	declare -i cont_dir=0 cont_arch=0

	for elemento in $1/*; do
		if [ -d $elemento ]; then
			cont_dir=$(($cont_dir+1))
		else
			if [ -f $elemento ]; then
				cont_arch=$(($cont_arch+1))
			fi
		fi
	done
	echo "La cantidad de directorios es $cont_dir"
	echo "La cantidad de archivos es $cont_arch"
else
	echo "No existe el directorio pasado como parametro"
fi
