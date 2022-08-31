#!/bin/bash

for elemento in $(ls nuevo/tp1); do
	if [[ $elemento == *".txt"* ]]; then
		echo "Agregando permiso de escritura a todos los usuarios a $elemento"
		chmod a+w nuevo/tp1/$elemento
	fi
done
