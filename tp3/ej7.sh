#!/bin/bash

echo "Ingrese el primer numero"
read a

echo "Ingrese el segundo numero"
read b

sum=$((a+b))
res=$((a-b))
prod=$((a*b))
div=$(echo "scale=2; $a/$b" | bc)

echo "La suma de los numeros es $a + $b = $sum" 
echo "La resta de los numeros es $a - $b = $res" 
echo "El producto de los numeros es $a * $b = $prod" 
echo "La division de los numeros es $a / $b = $div" 
