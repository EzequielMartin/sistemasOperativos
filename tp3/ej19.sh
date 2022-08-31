#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		sed -i 's/^/   /' $elemento
	done
fi
