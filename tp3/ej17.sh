#!/bin/bash

if [ ! -f $1 ]; then
	echo "Debe pasar un fichero como parametro"
else
	cat $1 | tr "[:lower:]" "[:upper:]"
fi
