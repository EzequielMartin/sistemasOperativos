#!/bin/bash

if [ ! -f $1 ] || [ ! $# -eq 2 ]; then
	echo "Debe pasar un archivo y un mes como parametro"
	echo "Formato del mes MM, por ej 05"
else

	mes=$(stat -c%y $1 | awk '{print $1}' | cut -d"-" -f2)

	if [ $mes -eq $2 ]; then
		echo "Se modifico ese mes"
	else
		echo "No se modifico ese mes"
	fi
fi
