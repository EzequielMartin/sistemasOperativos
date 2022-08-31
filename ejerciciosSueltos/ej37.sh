#Realizar un script que al pasarle un archivo como parámetro nos devuelva
#el tamaño del mismo. A su vez, chequear que el parámetro no se pase en
#blanco y que el archivo exista o sea del tipo ordinario.

#!/bin/bash

if [ ! -f $1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	stat -c%s $1
fi
