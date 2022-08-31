#!/bin/bash

if [ -f namev2 ]; then
	rm namev2
fi
if [ -f extendv2 ]; then
	rm extendv2
fi
if [ -f permv2 ]; then
	rm permv2
fi
if [ -f tamv2 ]; then
	rm tamv2
fi

if [ ! -d $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $(find $1/* -maxdepth 0 -type f -name "a*"); do
		nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)
		echo $nom >> namev2
	done
	for elemento2 in $(find $1/* -maxdepth 0 -type f -name "*.txt"); do
		nom2=$(echo $elemento2 | rev | cut -d"/" -f1 | rev)
		echo $nom2 >> extendv2
	done
	for elemento3 in $(find $1/* -maxdepth 0 -type f -perm 644); do
		nom3=$(echo $elemento3 | rev | cut -d"/" -f1 | rev)
		echo $nom3 >> permv2
	done
	for elemento4 in $(find $1/* -maxdepth 0 -type f -size +1k); do
		nom4=$(echo $elemento4 | rev | cut -d"/" -f1 | rev)
		echo $nom4 >> tamv2
	done
fi
