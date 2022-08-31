#Realizar un script en bash que busque todos los archivos mp3 de todo el
#directorio home (todos los usua) y los mueva a un directorio cualquiera
#llamado basura. Además informar sobre el tamaño total en Mbyte de
#todos los archivos encontrados

#!/bin/bash

if [ ! -d basura ]; then
	mkdir basura
fi

for elemento in $(sudo find / -type f -name "*.mp3"); do
	nom=$(echo $elemento | rev | cut -d"/" -f1 | rev)
	cp $elemento ./basura/$nom

done
