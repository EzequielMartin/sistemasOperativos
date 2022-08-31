#!/bin/sh

mkdir nuevo
tar -xzvf $HOME/practicas/tp1.tar.gz -C nuevo
cat nuevo/tp1/hist.txt | grep ls  > listado
tar -czvf listado.tar.gz listado
