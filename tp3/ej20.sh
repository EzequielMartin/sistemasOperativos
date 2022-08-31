#!/bin/bash

if [ ! -f listado ]; then
	touch listado
fi
if [ ! -d execu ]; then
	mkdir execu
fi
if [ ! -d no-execu ]; then
	mkdir no-execu
fi

for elemento in $HOME/practicas/tp2/*; do
	if [ -f $elemento ]; then
		nom=$(echo $elemento | cut -d"/" -f6)
		echo $nom
		if [[ $elemento == *".sh" ]]; then
			cp $elemento ./execu/$nom
			echo $nom >> listado
		else
			cp $elemento ./no-execu/$nom
			echo $nom >> listado
		fi
	fi
done
