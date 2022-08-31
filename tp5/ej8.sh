#!/bin/bash

if [ ! $1 ]; then

echo "Ingrese un parametro"

else

memoria_libre=$(free | sed '1d' | sed '2d' | awk '{print $4}')

i=0;

while [ $i -eq 0 ]; do
	echo "$memoria_libre"
	if [ $memoria_libre -gt $1 ]; then
		echo "Se excedio la memoria libre"
		i=1;
		exit
	fi
	sleep 5;
done

fi
