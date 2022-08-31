#Se solicita realizar un script para averiguar que alumno realizó mayor
#cantidad de ejercicios previo al parcial. Para ello, se recibirá como
#argumento una lista (no se sabe exactamente cuantos) de directorios. El
#script debe validar que dichos directorios sean válidos, y retornar el
#nombre del directorio que contiene mayor cantidad de archivos con la
#extensión ".sh" cuyo dueño contenga permisos de ejecución.

cant=0
cantMax=0

if [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	for elemento in $1/*; do
		if [ -d $elemento ]; then
			cant=$(find $elemento -type f -name "*.sh"| wc -l)
			if [ $cant -gt $cantMax ]; then
				cantMax=$cant
				nomMax=$elemento
			fi
		fi
	done
	echo "El usuario $elemento hizo la mayor cant de scripts: $cantMax"
fi
