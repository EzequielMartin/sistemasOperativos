#!/bin/bash

if [ ! -f $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un archivo como parametro"
else
	tam=$(stat -c%s $1)
	echo "El archivo pesa $tam bytes"
fi
