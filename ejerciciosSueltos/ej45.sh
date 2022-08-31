#Hacer un script que reciba como parámetro un directorio cualquiera
#y nos devuelva el tamaño del mismo, expresado en la unidad correspondiente
#(Byte, KByte, MByte, etc); chequear que el parámetro no se pase en blanco y
#que el directorio pasado exista. Guardar el tamaño del mismo en un archivo
#cualquiera y además mostrar por pantalla la leyenda: El directorio XX tiene
#un tamaño de X bytes.

if [ ! $1 ] || [ ! -d $1 ]; then
	echo "Debe pasar un directorio como parametro"
else
	tam=$(stat -c%s $1)
	echo $tam > ej45.txt
	echo "El directorio $1 tiene un tamaño de $tam bytes."
fi
