#/bin/bash

echo "Memoria total $(free | grep Mem: | awk '{print $2}')" > InformeDeRam.txt
echo "Memoria usada $(free | grep Mem: | awk '{print $3}')" >> InformeDeRam.txt
echo "Memoria libre $(free | grep Mem: | awk '{print $4}')" >> InformeDeRam.txt

