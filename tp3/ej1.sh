#!/bin/bash

echo $HOSTNAME > var-set
echo $HOME >> var-set
echo $LOGNAME >> var-set
echo $PATH >> var-set

cat var-set | sort > var-set-ord

mv var-set-ord var-set

