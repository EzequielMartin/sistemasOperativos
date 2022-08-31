#Realizar un script que recibe un directorio y una palabra como argumentos,
#y retorna el top 3 de los archivos en dicho directorio que contienen la
#palabra mayor cantidad de veces.

#!/bin/bash

if [ -f ej46.txt ]; then
	rm ej46.txt
fi

touch ej46.txt

if [ ! -d $1 ] || [ ! $2 ]; then
	echo "Debe pasar un directorio y una palabra como parametro"
else
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			cant=$(grep $2 $elemento | wc -l)
			nom=$elemento
			echo "$cant : $elemento" >> ej46.txt
		fi
	done
	cat ej46.txt | sort -nr | head -n3
fi
