#Realizar un script donde por parámetro se ingresa una palabra y esta se
#imprima 10 veces por pantalla y a su vez se guarde en un archivo llamado
#word. Usar una sentencia iterativa para resolverlo, a su vez chequear que
#el parámetro no se pase en blanco cuando se ejecuta el script. Comprimir el
#archivo word.

#!/bin/bash

if [ ! $1 ] && [ ! $1 = "" ]; then
	echo "Debe pasar una palabra como parametro"
else
	echo $1 > word
	for (( i=1; i<=10; i++ )); do
		echo $1
	done
fi
