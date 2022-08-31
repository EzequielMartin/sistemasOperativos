#Realizar un script que evalúe 2 archivos pasados como argumentos indicando
#adecuadamente entre ambos cual posee más cantidad de líneas.

#!/bin/bash

if [ ! $# -eq 2 ] || [ ! -f $1 ] || [ ! -f $2 ]; then
	echo "Debe pasar dos archivos como parametro"
else
	cant1=$(cat $1 | wc -l)
	cant2=$(cat $2 | wc -l)

	if [ $cant1 -gt $cant2 ]; then
		echo "El primer archivo tiene mas lineas"
	else
		if [ $cant1 -eq $cant2 ]; then
			echo "Los archivos tienen la misma cantidad de lineas"
		else
			echo "El segundo archivo tiene mas lineas"
		fi
	fi
	echo "El primer archivo tiene $cant1 lineas"
	echo "El segundo archivo tiene $cant2 lineas"
fi
