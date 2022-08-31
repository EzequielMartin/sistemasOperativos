#!/bin/bash

if [ ! -f $1 ]; then
	echo "Debe ingresar un archivo como parametro"
else
	vieja="Linea a borrar"
	nueva="Linea borrada"

	sed "s/$vieja/$nueva/" $1 > ej14v3-archivonuevo.txt
fi
