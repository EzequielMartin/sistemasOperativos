#!/bin/bash

echo "Bloques de 1K: $(df | grep /dev/sda3 | awk '{print $2}')"
echo "Bloques usados: $(df | grep /dev/sda3 | awk '{print $3}')"
echo "Bloques libres: $(df | grep /dev/sda3 | awk '{print $4}')"
