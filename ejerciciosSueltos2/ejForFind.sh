#!/bin/bash

find=$(find ./* -type f -name "*.sh")

#for elemento in $(find ./* -type f -name "*.sh"); do

for elemento in $find; do
	echo $elemento
	sleep 1
done
