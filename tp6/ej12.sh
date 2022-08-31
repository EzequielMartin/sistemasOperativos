#!/bin/bash

if [ ! $1 ]; then
	echo "Ingrese un nombre de usuario como parametro"
else
	con=$(last -s 2022-08-01 -t 2022-08-30 | grep $1)

		if [ -z "$con" ];then
			echo "No, no se conecto en el ultimo mes"
		else
			echo "Si, se conecto en el ultimo mes"
		fi
fi
