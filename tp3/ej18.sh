#!/bin/bash

if [ ! -d ar-modificados ]; then
	mkdir ar-modificados
fi

for elemento in ./archivosEj18/*; do
	nom=$(echo $elemento | cut -d"/" -f3)
	sed '2,5d' $elemento > ./ar-modificados/$nom-m
done

