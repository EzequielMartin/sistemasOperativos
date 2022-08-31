#Realizar un script que indique si un usuario pasado como argumento
#tiene como shell el bash, de lo contrario decir que tipo de shell tiene

#!/bin/bash

if [ ! $1 ]; then
	echo "Debe pasar un usuario como parametro"
else
	shell=$(cat /etc/passwd | grep $1 | cut -d":" -f7)
	if [ "$shell" = "/bin/bash" ]; then
		echo "Usa bash"
	else
		if [ "$shell" = "" ]; then
			echo "No existe usuario"
		else
			echo $shell
		fi
	fi
fi
