#!/bin/bash

if [ ! -d edirectory ]; then
	mkdir edirectory
fi

if [ ! -d efiler ]; then
	mkdir efiler
fi

for elemento in $HOME/*; do
	if [ -d $elemento ]; then
		nom=$(echo $elemento | cut -d"/" -f4)
		ln -s $elemento ./edirectory/$nom
	fi
	if [ -f $elemento ]; then
		nom=$(echo $elemento | cut -d"/" -f4)
		ln $elemento ./efiler/$nom
	fi
done
