#!/bin/bash

# Numero de Pagina | Direccion
# 	  1            1024
#	  2            8192
#	  3            5120
#         4            7450

echo "a) Pagina 1, desplazamiento 75: $((1024+75))"
echo "b) Desplazamiento mayor a tamaño de pagina, por lo tanto incorrecta"
echo "c) Pagina 2, desplazamiento 215: $((8192+215))"
echo "d) Pagina 3, desplazamiento 42: $((5120+42))"
echo "e) Pagina 4, desplazamiento 127: $((7450+127))"
echo "f) Desplazamiento mayor a tamaño de pagina, por lo tanto incorrecta"
