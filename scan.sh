#!/bin/bash

echo "Welcome to Simple Nmap Bash Scanner BY SAWAN WARKAR"
read -p "Enter the target IP or domain: " target
mkdir -p results
filename="results/${target}_scan.txt"

# HERE I GAVE 2 OPTIONS FOR SCAN 
echo -e "\nChoose scan type:"
echo "1. Quick Scan (Top 100 ports)"
echo "2. Full Scan (All 65535 ports)"
read -p "Enter 1 or 2: " scan_choice

echo -e "\n[+] Scanning host: $target"
echo "[+] Results will be saved in $filename"

# Ping Scan
echo -e "\n[+] Running Ping Scan..." | tee -a $filename
nmap -sn $target | tee -a $filename

# Port Scan
if [[ "$scan_choice" == "1" ]]; then
    echo -e "\n[+] Running Quick Port Scan (Top 100 ports)..." | tee -a $filename
    nmap --top-ports 100 -T4 $target | tee -a $filename
elif [[ "$scan_choice" == "2" ]]; then
    echo -e "\n[+] Running Full Port Scan (All ports, may take time)..." | tee -a $filename
    nmap -p- -T4 $target | tee -a $filename
else
    echo -e "\n[!] Invalid choice. Defaulting to Quick Scan..." | tee -a $filename
    nmap --top-ports 100 -T4 $target | tee -a $filename
fi

# OS and Service Detection
echo -e "\n[+] Running OS and Service Detection..." | tee -a $filename
nmap -A -T4 $target | tee -a $filename

echo -e "\n[✔] Scan completed. Output saved to $filename"
