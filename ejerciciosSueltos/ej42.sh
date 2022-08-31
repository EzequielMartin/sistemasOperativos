#Hacer un script que guarde en el archivo perm todos los archivos que
#tienen permisos igual a 755 y en el archivo exten todos los que terminan
#con extensión .conf de un directorio cualquiera pasado como parámetro.
#A su vez, chequear que el parámetro exista y sea realmente un directorio.

#!/bin/bash

if [ -f perm ]; then
	rm perm
fi
if [ -f exten ]; then
	rm exten
fi

touch perm
touch exten

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $(find $1/ -maxdepth 1 -type f -perm 755); do
		echo $elemento >> perm
	done

	for elemento2 in $(find $1/ -maxdepth 1 -type f -name "*.conf"); do
		echo $elemento2 >> exten
	done
fi
