#Realizar un script el cual solicite un numero y responda mostrando los 6
#siguientes. Los 6 números deben quedar guardados en orden inverso en el
#archivo números

if [ -f numeros ]; then
	rm numeros
fi

if [ ! $1 ]; then
	echo "Debe pasar un numero como parametro"
else
	inicial=$(($1+1))
	final=$(($1+6))
	for (( c=$inicial; c<=$final; c++)); do
		echo $c >> numeros
	done
	sort -nr numeros
fi
