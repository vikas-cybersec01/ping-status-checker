 # ping-status-checker

A beginner-friendly **Bash practice script** built while learning Linux networking fundamentals, `ping` diagnostics, and basic packet loss calculation.

> **Note:** This is a hands-on learning project created to practice Linux text-processing utilities (`grep`, `awk`, `cut`, `tr`) and Bash conditional logic.

## What It Does
- Takes a domain or IP address as a command-line argument and sends 5 ICMP ping packets.
- Filters the ping summary to extract transmitted and received packet counts.
- Calculates the packet loss percentage and displays the network health (`Good`, `UNSTABLE`, or `DEAD`).

## How to Run
```bash
chmod +x network.sh
./Network.sh google.com
