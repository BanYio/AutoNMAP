# AUTONMAP
![image](https://github.com/user-attachments/assets/764d473b-f05e-48d6-b894-b46b30b864c8)

## AutoNmap.sh - Automated Nmap Scanning Tool

## Introduction

AutoNmap.sh is a simple yet powerful bash script designed to automate the process of network scanning using nmap. This tool allows you to quickly identify open ports and perform detailed service enumeration on a target IP address, saving the results to a specified directory. Whether you're a penetration tester, system administrator, or a cybersecurity enthusiast, AutoNmap.sh streamlines your network scanning tasks by combining several nmap commands into one easy-to-use script.

## Features
**Automated Port Scanning:** Scans all 65535 TCP ports at a high rate to quickly identify open ports.

**Service Enumeration:** Uses nmap scripts to detect services and versions running on open ports.

**Customizable Output:** Allows you to specify where to save the results of the scan.

## Prerequisites
Before using AutoNmap.sh, ensure that the following prerequisites are met:

 - **Operating System:** The script is designed for Unix-like operating systems (e.g., Linux, macOS).

 - **Nmap:** Ensure that nmap is installed on your system.
 
 You can install it using the following command:
 ```shell
sudo apt update
sudo apt-get install nmap
```
## Installation
To install AutoNmap.sh, simply clone the repository to your local machine and make the script executable:
```shell
git clone https://github.com/BanYio/AutoNMAP.git
cd AutoNMAP
chmod +x autonmap.sh
```
## Usage
Running AutoNmap.sh is straightforward. The script will prompt you to enter the IP address to scan and the path where you want to save the results.
```shell
./autonmap.sh
```
## Example Usage
**1.** Run the Script: Execute the script by running:
```shell
./autonmap.sh
```
**2.** Input the Target IP: When prompted, enter the IP address of the target you wish to scan:
```shell
IP to scan: 172.17.0.2
```
**3.** Specify the Output Directory: Enter the path where you want to save the scan results:
```shell
Path to save results (For example, /path/to/save): /home/user/target
```
**4.** View the Results: The script will perform a full TCP port scan followed by a detailed service scan on the open ports. The results will be saved in the specified directory:
```shell
Open Ports: 22,80
Results saved in: /home/user/scans/scan.txt
```
**5.** Check the Results: You can view the scan results by opening the scan.txt file in your specified directory:
```shell
cat /home/user/scans/scan.txt
```
## Summary
AutoNmap.sh is a handy tool for automating nmap scans, making it easier to perform network reconnaissance efficiently. With its ability to quickly identify open ports and provide detailed service information, it's a valuable addition to any security professional's toolkit.

## Disclaimer
Use this tool responsibly and only on networks and systems for which you have explicit permission to test. Unauthorized scanning is illegal and unethical.
