#!/bin/bash

if [ -f TOT_GENERAL ]; then
	rm TOT_GENERAL
fi

if [ ! -d $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	cant=0
	cantTot=0
	for elemento in $1/*; do
		if [ -f $elemento ]; then
			cant=$(cat $elemento | wc -l)
			cantTot=$(($cantTot+$cant))
		fi
	done
	echo $cantTot > TOT_GENERAL
fi
