#Hacer un script que indique la cantidad de archivos y directorios que hay
#en un directorio cualquiera pasado como argumento, usando estructuras
#repetitivas.

#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	cant_arch=0
	cant_dir=0
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			cant_arch=$(($cant_arch+1))
		else
			cant_dir=$(($cant_dir+1))
		fi
	done
	echo "Cant de archivos $cant_arch"
	echo "Cant de directorios $cant_dir"
fi
