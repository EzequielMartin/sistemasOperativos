#Se desea realizar un informe detallado de los usuarios conectados
#actualmente al sistema. Para ellos se debe crear un directorio
#"usuarios conectados", que contenga un archivo por cada uno de los
#usuarios conectados al momento de ejecución del script. Cada archivo
#tendrá la siguiente estructura de nombre: "datos_<nombre-usuario>.txt".
#Dentro de cada archivo, detallar en líneas  independientes: id del usuario,
#nombre completo, ruta a tu home y shell configurado # por defecto.
#Finalmente empaquetar el directorio "usuarios conectados".

#!/bin/bash

if [ ! -d usuariosConectados ]; then
	mkdir usuariosConectados
fi
for usuario in $(who | awk '{print $1}'); do
	if [ ! -f ./usuariosConectados/datos_$usuario.txt ]; then
		touch ./usuariosConectados/datos_$usuario.txt
	fi
	id=$(cat /etc/passwd | grep $usuario | cut -d":" -f3)
	nom=$(cat /etc/passwd | grep $usuario | cut -d":" -f5)
	ruta=$(cat /etc/passwd | grep $usuario | cut -d":" -f6)
	shell=$(cat /etc/passwd | grep $usuario | cut -d":" -f7)
	echo "ID: $id" > ./usuariosConectados/datos_$usuario.txt
	echo "Nombre: $nom" >> ./usuariosConectados/datos_$usuario.txt
	echo "Ruta: $ruta" >> ./usuariosConectados/datos_$usuario.txt
	echo "Shell: $shell" >> ./usuariosConectados/datos_$usuario.txt
done
