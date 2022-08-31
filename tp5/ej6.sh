#!/bin/bash

echo "Ingrese una opcion"
echo "1 - Para habilitar la memoria swap"
echo "2 - Para deshabilitar la memoria swap"
read resp

if [ $resp -eq 1 ]; then
	sudo swapon -a
else
	if [ $resp -eq 2 ]; then
		sudo swapoff -a
	else
		echo "Opcion invalida"
		exit
	fi
fi
