#!/bin/bash

resp=0

while [ $resp -ne 4 ]; do

	echo "Menu"
	echo "1 - Borrar un fichero"
	echo "2 - Visualizar fichero"
	echo "3 - Copiar archivo al directorio actual"
	echo "4 - Salir del script"
	read resp

	if [ $resp -eq 1 ]; then
		echo "Ingrese el nombre del fichero que desea borrar"
		read nom
		rm $nom
	fi
	if [ $resp -eq 2 ]; then
		echo "Ingrese la ruta del fichero que desea listar"
		read nom
		cat $nom
	fi
	if [ $resp -eq 3 ]; then
		echo "Ingrese la ruta del archivo que desea copiar a este directorio"
		read ruta
		cp $ruta .
	fi
done
