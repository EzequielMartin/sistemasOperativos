#Hacer un script que guarde en el archivo conectados todos los usuarios
#conectados al sistema y en el archivo procesos todos los procesos que se
#están ejecutando en el sistema. Además, si al script le paso como parámetro
#un usuario cualquiera me diga si está conectado o no.

#!/bin/bash

if [ ! -f conectados ]; then
	touch conectados
fi
if [ ! -f procesos ]; then
	touch procesos
fi

who | awk '{print $1}' > conectados
ps aux | awk '{print $11}' > procesos

if [ $1 ]; then
	usu=$(grep -x $1 conectados)
	if [ "$usu" = "" ]; then
		echo "El usuario no esta conectado"
	else
		echo "El usuario esta conectado"
	fi
fi
