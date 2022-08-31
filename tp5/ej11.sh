#!/bin/bash

echo "a) Pagina 0, desplazamiento 80: $((4096+80))"
echo "b) Pagina 3, desplazamiento 150: $((6144+150))"
echo "c) Pagina 1, desplazamiento 600: $((8190+600))"
echo "d) Pagina 4: Bit de validez en 0, por lo tanto: 'Fallo de pagina'"
echo "e) Pagina 2: Bit de validez en 0, por lo tanto: 'Fallo de pagina'"
