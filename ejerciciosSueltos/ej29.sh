#Guardar en un fichero un listado de usuarios y espacio en disco ocupado
#por los ficheros que tenga cada uno en su carpeta personal. Ordenar de mayor
#a menor por espacio ocupado.  Para acceder a los directorios de algunos
#usuarios se necesitan permisos especiales.

#/bin/bash

usr=$(cat /etc/passwd | cut -d":" -f1)

if [ ! -f resultadoEj29.txt ]; then
	touch resultadoEj29.txt
else
	> resultadoEj29.txt
fi
for elemento in $usr; do
	if [ -d /home/$elemento ]; then
		tam=$(sudo du -s /home/$elemento | cut -d"t" -f1)
		echo $tam >> resultadoEj29.txt
	fi
done
sort -nr resultadoEj29.txt
