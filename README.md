# Wi-Fi Security Monitoring Tool

This repository contains the full source code and experimental materials for the Honours Project on detecting Wi-Fi network threats in public environments using Python.

## Project Overview

This project includes:
- A lightweight, real-time Python tool for detecting ARP spoofing and Man-in-the-Middle (MITM) attacks.
- Virtual machine experiment scripts and configuration logs.
- Public Wi-Fi environment detection script.
- A detailed report of experiment procedures and outcomes.

## Directory Structure

- `main_tool/`: Contains the final detection tool developed with PyCharm.
- `scripts/`: Includes shell scripts and logs from the Kali virtual machine experiments.
  - `experiment_script.sh`: Shell script to reproduce the virtual MITM attack lab.
  - `experiment_commands.txt`: Raw terminal commands.
  - `experiment_log.docx`: Original documentation of experiment outputs.
- `README.md`: Project description and instructions.

## Usage

### Run the Python detection tool:
```bash
pip install scapy
sudo python3 main_tool/network_attack_detector.py
```

### Run the VM experiment script:
```bash
chmod +x scripts/experiment_script.sh
sudo ./scripts/experiment_script.sh
```

## Author

Yao Hengjia  
BEng (Hons) Cyber Security  
University of the West of Scotland, 2025
