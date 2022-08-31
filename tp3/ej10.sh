#!/bin/bash

echo "-----MENU-----"
echo "1- Borrar fichero"
echo "2- Visualizar fichero"
echo "3- Copiar un archivo al fichero actual"
echo "4- Salir del script"
echo "--------------"
echo "Ingrese una opcion"
read resp

if [ $resp == 1 ]; then
	echo "Ingrese el nombre del fichero"
	read nom
	echo "Borrando fichero"
	rm $nom
else
	if [ $resp == 2 ]; then
		echo "Ingrese el nombre del fichero"
		read nom
		echo "Visualizando fichero"
		cat $nom
	else
		if [ $resp == 3 ]; then
			echo "Ingrese el nombre del archivo"
			read nom
			echo "Copiando archivo"
			cp $nom .
		else
			if [ $resp == 4 ]; then
				echo "Saliendo del script"
				exit
			else
				echo "Opcion incorrecta"
			fi
		fi
	fi
fi
