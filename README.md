# Simple Nmap Bash Scanner

A simple bash script to perform Nmap scanning on a target IP or domain. This tool allows users to run a ping scan, a full port scan, and OS/service detection.

## Features
- Ping Scan to check if the host is up.
- Full Port Scan (all 65535 ports).
- OS and Service Detection.

## Requirements
- `nmap`: Make sure Nmap is installed on your system. You can install it by running:

  For **Debian-based** systems (like Ubuntu/Kali Linux):
  ```bash
  sudo apt update
  sudo apt install nmap

INSTRUCTIONS
-1. CLONE THIS REPO

   `git clone https://github.com/yourusername/yourrepositoryname.git.`
   
-2.Navigate to the project directory:

`cd yourrepositoryname`

-3.Make the script executable:

`chmod +x scan.sh`

-4.Run the script:

`sudo ./scan.sh`


The script will prompt you for a target IP or domain, and then it will run a series of scans:


Ping Scan (to check if the host is reachable).


Full Port Scan (scans all 65535 ports).


OS and Service Detection (detects the operating system and services).


View the results:

The results will be saved in the results/ directory with the format targetname_scan.txt.

Example Output :


$ ./scan.sh

Welcome to Simple Nmap Bash Scanner.

Enter the target IP or domain: scanme.nmap.org.

[+] Scanning host: scanme.nmap.org

[+] Results will be saved in results/scanme.nmap.org_scan.txt

[+] Running Ping Scan...

Nmap scan report for scanme.nmap.org (45.33.32.156)

Host is up (0.24s latency).

...
[✔] Scan completed. Output saved to results/scanme.nmap.org_scan.txt


License

This project is licensed under the MIT License - see the LICENSE file for details.



Author
[SAWAN WARKAR]

Acknowledgments
Nmap for providing the underlying scanning tool.

pgsql
Copy









