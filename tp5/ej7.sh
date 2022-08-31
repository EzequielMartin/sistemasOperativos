#!/bin/bash

echo "Ingrese una opcion"
echo "1- Swappiness = 0%"
echo "2- Swappiness = 50%"
echo "3- Swappiness = 100%"
read resp

if [ $resp -eq 1 ]; then
	sudo sysctl -w vm.swappiness=0
else
	if [ $resp -eq 2 ]; then
		sudo sysctl -w vm.swappiness=50
	else
		if [ $resp -eq 3 ]; then
			sudo sysctl -w vm.swappiness=100
		fi
	fi
fi
