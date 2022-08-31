#!/bin/bash

hora=$(date +"%T");

touch $HOME/practicas/tp6/archi\|\|$hora

# el archivo crontab esta en /etc

#Linea que va en crontab
#*/2 * * * * ezequiel bash $HOME/practicas/tp6/ej6.sh
