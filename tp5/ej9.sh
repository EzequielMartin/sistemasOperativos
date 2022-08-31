#!/bin/bash

if [ ! $1 ]; then
	echo "Ingrese un parametro"
else

sync; echo $1 > /proc/sys/vm/drop_caches

fi
