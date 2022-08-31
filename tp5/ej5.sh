#!/bin/bash

#echo "Procesos Dormidos"
#ps aux | grep "S\|D" | sed '1d' | awk '{print $2}'

echo "a) Cantidad de procesos esperando por CPU: $(vmstat | sed '1,2d' | awk '{print $1}')"

echo "b) Cantidad de procesos en estado dormido: $(vmstat | sed '1,2d' | awk '{print $2}')"

swap=$(vmstat | sed '1,2d' | awk '{print $3}')

if [ $swap -eq 0 ]; then
	echo "c) No estan usando memoria swap"
else
	echo "c) Si estan usando memoria swap"
fi

echo "d) Cantidad de memoria intercambiada desde el disco: $(vmstat | sed '1,2d' | awk '{print $7}')"

echo "e) Cantidad de memoria intercambiada hacia el disco: $(vmstat | sed '1,2d' | awk '{print $8}')"

