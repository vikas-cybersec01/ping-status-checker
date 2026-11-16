# ping-status-checker
A simple Bash script built while learning Linux networking, ping diagnostics, and packet loss calculation.

  # ping-status-checker

A beginner-friendly **Bash practice script** built while learning Linux networking fundamentals, `ping` diagnostics, and basic packet loss calculation.

> **Note:** This is a hands-on learning project created to practice Linux text-processing utilities (`grep`, `awk`, `cut`, `tr`) and Bash conditional logic.

## What It Does
- Takes a domain or IP address as a command-line argument and sends 5 ICMP ping packets[cite: 8].
- Filters the ping summary to extract transmitted and received packet counts[cite: 8].
- Calculates the packet loss percentage and displays the network health (`Good`, `UNSTABLE`, or `DEAD`)[cite: 8].

## How to Run
```bash
chmod +x network.sh
./network.sh google.com
