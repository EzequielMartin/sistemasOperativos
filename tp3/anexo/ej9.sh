#!/bin/bash

if [ -f perm ]; then
	rm perm
fi
if [ -f exten ]; then
	rm exten
fi

if [ ! -d $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for el1 in $(find $1/* -maxdepth 1 -type f -perm 755); do
		echo $el1 >> perm
	done
	for el2 in $(find $1/* -maxdepth 1 -type f -name "*.conf"); do
		echo $el2 >> exten
	done
fi
