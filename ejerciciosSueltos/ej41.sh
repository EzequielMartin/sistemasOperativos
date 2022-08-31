#Hacer un script que arme un menú de 3 opciones:
#1)	Guarde una frase ingresada por teclado en un archivo
#2)	Muestre la frase ingresada en la opción 1 si es que existe
#3)	Salir del menú

resp=0
frase=""

if [ -f rj41.txt ]; then
	rm ej41.txt
fi

function menu {
	echo "Ingrese una opcion (1,2,3)"
	echo "1) Guardar frase ingresada por teclado"
	echo "2) Mostrar frase ingresada por teclado"
	echo "3) Salir del menu"
}

while [ $resp != 3 ]; do
	menu
	read resp
	if [ $resp = 1 ]; then
		echo "Ingrese frase"
		read frase
		touch ej41.txt
		echo $frase > ej41.txt
		echo "Frase guardada con exito"
		sleep 3
	else
		if [ $resp = 2 ]; then
			if [ -f ej41.txt ]; then
				cat ej41.txt
				sleep 3
			else
				echo "Primero debe ingresar una frase"
				sleep 3
			fi
		fi
	fi
done
