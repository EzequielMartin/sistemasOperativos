#Hacer un script al cual se le pase como parámetro un directorio y una
#palabra. El script debe enviar a un archivo llamado matched el nombre de
#cada archivo que se encuentre dentro del directorio y que contenga la
#palabra indicada. Comprimir el archivo matched en matched.gz

#!/bin/bash

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio y un string como parametro"
else
	#if [ ! -f matched ]; then
	#	touch matched
	#fi
	#for elemento in $1/*; do
		#nom=$(echo $elemento | cut -d"/" -f6)
		#echo $nom
	#done
fi
