#!/bin/bash

resp=0

while [ ! $resp = -1 ]; do
	echo "Ingrese una palabra clave, ingrese -1 para cortar"
	read resp
	if [ $resp = "secreto" ]; then
		echo "Bienvenido"
		resp=-1
	else
		echo "Palabra clave incorrecta"
	fi
done
