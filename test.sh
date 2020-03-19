#!/bin/bash
# Aquí va el código
#Esta línea solo es para crear una copia por cualquier cosa del archivo a modificar
########cp /etc/network/interfaces /etc/network/interfaces.bak
# Esta sección presenta las opciones necesarias
echo "Para ajustar la red usando DHCP escribe: 1"
echo "Para ajustar la red con ip estático en casa escribe: 2"
echo "Para ajustar la red con ip estático el trabajo escribe: 3"
echo ""
echo ""
# Esta sección es para esperar la elección del usuario
read -p "Enter value of i :" i

if [ $i -eq 10 ]
then
    echo "Value of i is 10"
else
    echo "Value of i is not equal to 10"
fi
