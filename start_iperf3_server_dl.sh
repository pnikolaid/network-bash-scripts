#!/bin/bash

# Default port
DEFAULT_PORT=5201

# Check if a port number is provided as an argument
if [ -z "$1" ]; then
  echo "No port provided, using default port $DEFAULT_PORT"
  PORT=$DEFAULT_PORT
else
  PORT=$1
fi

iperf3 -s -p $PORT -f m > ~/panos/command_outputs/iperf3_server_dl_$PORT.txt 2>&1
