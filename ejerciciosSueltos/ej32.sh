#Realizar un script que evalue 2 archivos pasados como argumentos indicando
#adecuadamente entre ambos cual posee más cantidad de caracteres. Dejar la
#información especificando el nombre del archivo y cantidad, en el archivo
#cant-caracteres. Comprobar que los parámetros no sean pasados en blanco.

#!/bin/bash

if [ ! -f $1 ] || [ ! -f $2 ] || [ ! $# -eq 2 ]; then
	echo "Debe pasar dos archivos como parametro"
else
	cant1=$(cat $1 | wc -m)
	cant2=$(cat $2 | wc -m)

	nom1=$(echo $1 | cut -d"/" -f5)
	nom2=$(echo $2 | cut -d"/" -f5)

	echo "El archivo $nom1 tiene $cant1 caracteres" > cant-caracteres
	echo "El archivo $nom2 tiene $cant2 caracteres" >> cant-caracteres
fi
