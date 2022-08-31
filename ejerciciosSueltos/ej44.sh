#Hacer un script que recorra un directorio cualquier pasado por parámetro
#y borre el archivo más grande en el primer nivel de este directorio.
#Además guardar como información el nombre y tamaño del archivo borrado
#en un archivo llamado archivo-borrado.

#!/bin/bash

tam=0
tamMax=0

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			tam=$(stat -c%s $elemento)
			nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)
			if [ $tam -gt $tamMax ]; then
				tamMax=$tam
				nomMax=$nom
			fi
		fi
	done
	echo $nomMax
	echo $tamMax
fi
