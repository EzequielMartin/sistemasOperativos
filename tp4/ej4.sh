#!/bin/bash

if [ ! $1 ]; then
	ps aux
else
	if [ $1 = "root" ]; then
		echo "Introdujo un usuario erroneo"
	else
		ps aux | grep $1
	fi
fi
