#!/bin/bash

dir=$HOME/practicas/tp2

for elemento in $(find $dir/* -maxdepth 1 -type f -name "*.sh"); do
	nombreElemento=$(echo $elemento | cut -d"/" -f 6)
	awk '{sub("bash","sh")}1' $elemento > scripts-sh/$nombreElemento
done



