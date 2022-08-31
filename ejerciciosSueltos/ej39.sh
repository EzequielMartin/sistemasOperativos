#Realizar un script utilizando la sentencia while, que lea un archivo
#cualquiera línea por línea  y guarde cada una de ellas en un archivo
#llamado copia, a su vez vaya mostrando cada línea por terminal con
#un retardo de 3 segundos.

#/bin/bash

if [ -f copia ]; then
	rm copia
fi

touch copia

if [ ! -f $1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	cat $1 | while read linea; do
		echo $linea
		echo $linea >> copia
		sleep 3
	done
fi
