#Dado un archivo con 10 palabras desordenadas (una palabra por línea) enviado
#como parámetro, imprimir por pantalla el top 3 de las palabras con más
#apariciones, ordenado de forma descendiente. Validar que no falte el parámetro.

#/bin/bash

if [ ! -f $1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	sort $1 | uniq -c | sort -nr | head -n3
fi
