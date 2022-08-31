#Dado un directorio pasado como parámetro:
#1) Verificar que no falte el parámetro y que realmente sea un directorio
#2) Buscar todos los archivos .JPG y .PNG y copiarlos a una carpeta MIS_IMAGENES
#3) Empaquetar y comprimir la carpeta MIS_IMAGENES

#/bin/bash

if [ ! -d $1 ]; then
	echo "Debe ingresar un directorio como parametro"
else
	if [ ! -d $HOME/practicas/ejerciciosSueltos/MIS_IMAGENES ]; then
		mkdir MIS_IMAGENES
	fi
	for elemento in $1/*; do
		nom=$(echo $elemento | cut -d"/" -f"3")
		#echo $nom
		if [[ $nom == *".jpg" ]] || [[ $nom == *".png" ]]; then
			#echo $nom
			cp $elemento $HOME/practicas/ejerciciosSueltos/MIS_IMAGENES/$nom
		fi
	done
	tar -czvf MIS_IMAGENES.tar.gz $HOME/practicas/ejerciciosSueltos/MIS_IMAGENES
fi
