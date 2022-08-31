#!/bin/bash

for elA in $(find $1 -maxdepth 1 -type f -name "a*"); do
	echo $elA >> name
done

for elTxt in $(find $1 -maxdepth 1 -type f -name "*.txt"); do
	echo $elTxt >> extend
done

for elPerm in $(find $1 -maxdepth 1 -type f -perm 644); do
	echo $elPerm >> perm
done

for el1K in $(find $1 -maxdepth 1 -type f -size 1k); do
	echo $el1K >> tam
done

