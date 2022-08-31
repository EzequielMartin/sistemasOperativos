#!/bin/bash

if [ ! -d MIS_IMAGENES ]; then
	mkdir MIS_IMAGENES
fi

if [ ! -d $1 ] || [ ! $# -eq 1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)
		#echo $nom
		if [[ $nom == *".jpg"* || $nom == *".png"* ]]; then
			cp $elemento ./MIS_IMAGENES/$nom
			#echo $nom
		fi
	done
fi
