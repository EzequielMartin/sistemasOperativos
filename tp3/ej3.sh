#!/bin/bash

chmod 644 $HOME/practicas/tp2/listado

for elemento in $(find $HOME/practicas/tp2/* -maxdepth 1 -type f -perm 644); do
	echo $elemento | cut -d"/" -f 6 >> ej3-solo-nombres.txt
done
