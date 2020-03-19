#!/bin/bash
#Aquí va el código
#Esta línea solo es para crear una copia por cualquier cosa del archivo a modificar
cp /etc/network/interfaces /etc/network/interfaces.original
#Esta sección presenta las opciones necesarias
echo "Para ajustar la red usando DHCP escribe: 1"
echo "Para ajustar la red con ip estático en casa escribe: 2"
echo "Para ajustar la red con ip estático el trabajo escribe: 3"
echo ""
echo ""
#Esta sección es para esperar la elección del usuario
read -p "Escribe el número : " i
#En esta sección válida la opción del usuario
if [ $i -eq 1 ]
then
    #Estos comandos eliminan el contenido anterior y lo sustituye por para habilitar DHCP
    echo source /etc/network/interfaces.d/* > /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo auto lo enp0s3 >> /etc/network/interfaces
    echo allow-hotplug enp0s3 >> /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo iface lo inet loopback >> /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo iface enp0s3 inet dhcp >> /etc/network/interfaces
elif [ $i -eq 2 ]
then
    #Estos comandos eliminan el contenido anterior y lo sustituye por para habilitar ip estático en casa
    echo source /etc/network/interfaces.d/* > /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo auto lo enp0s3 >> /etc/network/interfaces
    echo allow-hotplug enp0s3 >> /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo iface lo inet loopback >> /etc/network/interfaces
    echo  >> /etc/network/interfaces
    echo iface enp0s3 inet static >> /etc/network/interfaces
    echo   address 192.168.100.60/24 >> /etc/network/interfaces
    echo gateway 192.168.100.1
    echo dns-nameservers 8.8.8.8 1.1.1.1 >> /etc/network/interfaces
elif [ $i -eq 3 ]
then
    echo "Thanks for entering # 3"
else
    echo "Esa no era una opción, intenta de nuevo"
fi
#Esta linea de codigo es para reiniciar el servicio de conexión para que se efectúen los cambios
########/etc/init.d/networking restart
