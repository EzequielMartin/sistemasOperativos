#!/bin/sh

input="/etc/passwd"

while read -r line; do
	echo "$line"
done < "$input"
