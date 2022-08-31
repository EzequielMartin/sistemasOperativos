#!/bin/bash

echo "Cantidad de usuarios conectados: $(uptime | awk '{print $4}')"
echo "Tiempo de encendido del equipo: $(uptime | awk '{print $3}') /  horas:minutos"
echo "Promedio de carga: $(uptime | awk '{print $8,$9,$10}') /  5,10,15 minutos"
