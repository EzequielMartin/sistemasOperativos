#!/bin/bash

if [ ! $1 ]; then
	who | awk '{print $1}' > conectados
else
	who | grep $1 | awk '{print $1,$4}'
fi
