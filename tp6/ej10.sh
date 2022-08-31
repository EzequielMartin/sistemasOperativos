#!/bin/bash

if [ ! $1 ]; then
	echo "Debe ingresar un parametro"
else
	sudo dmesg -l $1
fi
