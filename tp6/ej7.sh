#!/bin/bash

#Linea de /etc/crontab
#0 0 * * 1-5 ezequiel bash $HOME/practicas/tp6/ej7.sh

nom=backup\|\|$(date +"%d"-"%m"-"%y")

tar -czvf $HOME/$nom.tar.gz $HOME/practicas


