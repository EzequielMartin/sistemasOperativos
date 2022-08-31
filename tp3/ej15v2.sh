#!/bin/bash

if [ ! -d scripts-sh-v2 ]; then
	mkdir scripts-sh-v2
fi

for elemento in $(find /home/ezequiel/practicas/tp2/* -maxdepth 0 -type f -name "*.sh"); do
	nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)

	viejo="/bin/bash"
	nuevo="/bin/sh"

	sed "s|$viejo|$nuevo|" $elemento > ./scripts-sh-v2/$nom

done
