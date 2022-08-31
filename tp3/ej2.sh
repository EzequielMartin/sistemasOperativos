#!/bin/bash

dir=/home/ezequiel/practicas/tp2/

for elemento in $(ls $dir); do
	if [[ $elemento == *".sh"* ]]; then
		chmod o+x $dir/$elemento
		chmod g+w $dir/$elemento
		echo "Permisos cambiados a $elemento"
	else
		echo "$elemento no es un script"
	fi
done
