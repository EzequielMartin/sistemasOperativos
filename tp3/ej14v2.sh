#!/bin/bash

if [ ! -f archivo_modificado_v2_ej14.txt ]; then
	touch archivo_modificado_v2_ej14.txt
fi
if [ ! -f $1 ]; then
	echo "Debe pasar un archivo como parametro"
else

vieja="Linea a borrar"
nueva="Linea borrada"

sed "s/$vieja/$nueva/" $1 > archivo_modificado_v2_ej14.txt

chmod a-x archivo_modificado_v2_ej14.txt
chmod o+x archivo_modificado_v2_ej14.txt

fi
