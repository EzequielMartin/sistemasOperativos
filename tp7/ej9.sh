#!/bin/bash

echo "Filesystem Tamaño"
df -h | grep ^/dev | awk '{print $1,$2}'
