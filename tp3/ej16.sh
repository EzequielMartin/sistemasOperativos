#!/bin/bash

if [ ! -f $1 ]; then
	echo "Debe ser un archivo"
else
	sed '2,3d' $1
fi
