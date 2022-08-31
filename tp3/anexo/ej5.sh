#!/bin/bash

if [ ! $1 ]; then
	echo "Debe pasar un usuario como parametro"
else
	if [ $(cat /etc/passwd | grep -w $1 | cut -d":" -f7) == "/bin/bash" ]; then
		echo "Usa bash"
	else
		echo "No usa bash"
	fi
fi
