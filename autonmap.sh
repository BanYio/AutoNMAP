#!/bin/bash 
echo '
|\   __  \|\  \|\  \|\___   ___\\   __  \|\   ___  \|\   _ \  _   \|\   __  \|\   __  \  
\ \  \|\  \ \  \\\  \|___ \  \_\ \  \|\  \ \  \\ \  \ \  \\\__\ \  \ \  \|\  \ \  \|\  \ 
 \ \   __  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \\|__| \  \ \   __  \ \   ____\
  \ \  \ \  \ \  \\\  \   \ \  \ \ \  \\\  \ \  \\ \  \ \  \    \ \  \ \  \ \  \ \  \___|
   \ \__\ \__\ \_______\   \ \__\ \ \_______\ \__\\ \__\ \__\    \ \__\ \__\ \__\ \__\   
    \|__|\|__|\|_______|    \|__|  \|_______|\|__| \|__|\|__|     \|__|\|__|\|__|\|__|\
'
echo -e "\033[1;35mCreated by\033[0m \033[1;32mBanYio\033[0m"
echo ''
echo 'IP to scan: '
read IP_scan

echo 'Path to save results (For example, /path/to/save):'
read ruta_guardado

nmap_output=$(nmap -p- --min-rate 5000 -Pn -n $IP_scan)

open_ports=$(echo "$nmap_output" | grep -E '^[0-9]+/tcp\s+open' | cut -d '/' -f 1 | tr '\n' ',' | sed 's/,$//')
echo -e "Open Ports: \e[32m$open_ports\e[0m"

nmap_scan=$(nmap -Pn -n -sC -sV -p$open_ports $IP_scan)
echo "$nmap_scan" > "${ruta_guardado}/scan.txt"
echo "Results saved in: ${ruta_guardado}/scan.txt"
