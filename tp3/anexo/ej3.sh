#!/bin/bash

if [ -f ej2archivo.txt ]; then
	rm ej2archivo.txt
else
	touch ej2archivo.txt
fi

if [ ! $# -eq 1 ]; then
	echo "Debe pasar un numero como parametro"
else
	inicio=$(($1+1))
	fin=$(($1+6))
	for (( i=$inicio; i<=$fin; i++ )); do
		echo $i >> ej2archivo.txt
	done

	sort -nr ej2archivo.txt

fi
