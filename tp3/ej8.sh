#!/bin/bash

if [ -d $1 ]; then

	cont_arch=0
	cont_dir=0

	for elemento in $1/*; do
		if [ -d $elemento ]; then
			cont_arch=$(($cont_arch+1))
		else
			cont_dir=$(($cont_dir+1))
		fi
	done
	echo "Cant de archivos: $cont_arch"
	echo "Cant de directorios: $cont_dir"
else
	echo "El directorio no existe"
fi
