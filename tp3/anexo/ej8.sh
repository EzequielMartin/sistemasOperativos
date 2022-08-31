#!/bin/bash

if [ -f solo-archi ]; then
	rm solo-archi
else
	touch solo-archi
fi

if [ ! -d $1 ]; then
	echo "Debe pasar un directori como parametro"
else
	cont=0
	for elemento in $1/*; do
		if [ -f $elemento ];then
			cont=$((cont+1))
			echo $elemento >> solo-archi
		fi
	done
	echo $cont >> solo-archi
fi
