#!/bin/bash

if [ ! -d $HOME/practicas/tp7/exe ]; then
	mkdir exe
fi

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		nom=$(echo $elemento | cut -d"/" -f"6")
		if [[ $elemento == *'.mp3' ]]; then
			rm $elemento
			echo "Borrando $nom"
		else
			perm=$(stat -c '%a' $elemento)
			if [ $perm -eq 744 ]; then
				mv $elemento $HOME/practicas/tp7/exe/$nom
				echo "Moviendo $nom"
			fi
		fi
	done
fi
