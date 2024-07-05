#!/bin/bash

cd ../quectel
source venv/bin/activate
./venv/bin/python on.py 
ip route add 192.168.70.128/26 via 192.168.225.1
ip route add 192.168.70.129/32 via 192.168.225.1

sleep 10

# Ping the server (send only 1 packet) and redirect output to /dev/null
ping -c 1 192.168.70.129 > /dev/null 2>&1

# Check the exit status of the ping command
if [ $? -eq 0 ]; then
    echo "Ping to 192.168.70.192 was successful."
else
    echo "Ping to 192.168.70.129 failed."
fi
