#Hacer un script que reciba como parámetro un archivo y un string y me
#informe si dicho string está dentro del archivo. A su vez chequear la
#existencia del archivo y los parametros.

#!/bin/bash

if [ ! -f $1 ] || [ ! $2 ]; then
	echo "Debe pasar parametros"
else
	esta=$(grep "$2" $1)
	if [ "$esta" == "" ]; then
		echo "No esta la palabra"
	else
		echo "Esta la palabra"
	fi
fi
