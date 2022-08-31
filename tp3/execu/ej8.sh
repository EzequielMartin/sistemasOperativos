#!/bin/bash

cat nuevo/tp1/usuarios | grep ezequiel | cut -d":" -f 1,3,4,7 > perfil.txt
