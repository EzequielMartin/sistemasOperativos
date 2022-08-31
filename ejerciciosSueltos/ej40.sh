#Hacer un script que lea un directorio cualquiera pasado por parámetro
#y guarde solamente el nombre de los arch en solo-archi, y contabilice
#los mismos. Dicho contador guardarlo al final del archivo solo-archi.
#Usarestructura iterativa para resolverlo y chequear que el parámetro no
#se pase en blanco.

#!/bin/bash

if [ -f solo-archi ]; then
	rm solo-archi
fi

touch solo-archi

cont=0

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else

	for elemento in $1/*; do
		if [ -f $elemento ]; then
			cont=$(($cont+1))
			nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)
			echo $nom >> solo-archi
		fi
	done

echo "Cant de archivos: $cont" >> solo-archi

fi
