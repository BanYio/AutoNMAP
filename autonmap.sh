#!/bin/bash 
echo 'Introduce la IP que quieres escanear: '
read IP_scan

echo 'Introduce la ruta donde quieres guardar el archivo (por ejemplo, /ruta/de/guardado):'
read ruta_guardado

nmap_output=$(nmap -p- --min-rate 5000 -Pn -n $IP_scan)

open_ports=$(echo "$nmap_output" | grep -E '^[0-9]+/tcp\s+open' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//')
echo -e "Puertos abiertos: \e[32m$open_ports\e[0m"

nmap_scan=$(nmap -Pn -n -sC -sV -p$open_ports $IP_scan)
echo "$nmap_scan" > "${ruta_guardado}/puertos.txt"
echo "Resultados guardados en: ${ruta_guardado}/puertos.txt"
