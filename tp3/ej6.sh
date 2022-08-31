#!/bin/bash

for elemento in $(find $1/* -maxdepth 1 -type f -mmin -30); do
	echo "$elemento - modificado en los ultimos 30 mins"
done

for elemento in $(find $1/* -maxdepth 1 -type f -amin -60); do
	echo "$elemento - accedido en los ultimos 60 mins"
done

for elemento in $(find $1/* -maxdepth 1 -type f -mtime -5); do
	echo "$elemento - modificado en los ultimos 5 dias"
done

for elemento in $(find $1/* -maxdepth 1 -type f -mtime -10); do
	echo "$elemento - modificado en los ultimos 10 dias"
done
