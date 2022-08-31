#!/bin/bash

if [ ! -f $1 ]; then
	"Debe pasar un archivo como parametro"
else
	awk '{sub("Linea a borrar","Linea borrada")}1' $1 > ej14-archivo-modificado.txt
	chmod a-x ej14-archivo-modificado.txt
	chmod o+x ej14-archivo-modificado.txt
fi
