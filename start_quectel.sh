#!/bin/bash

cd ../quectel
source venv/bin/activate
./venv/bin/python on.py 
ip route add 192.168.70.128/26 via 192.168.225.1
ip route add 192.168.70.129/32 via 192.168.225.1

# Ping the server (send only 1 packet) and redirect output to /dev/null
ping -c 1 192.168.70.129


