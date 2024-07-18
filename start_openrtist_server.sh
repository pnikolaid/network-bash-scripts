#!/bin/bash

cd ../openrtist/server
source venv/bin/activate

# Default port
DEFAULT_PORT=9099

# Check if a port number is provided as an argument
if [ -z "$1" ]; then
  echo "No port provided, using default port $DEFAULT_PORT"
  PORT=$DEFAULT_PORT
else
  PORT=$1
fi

./venv/bin/python main.py --timing -p $PORT >  ~/panos/command_outputs/openrtist_server_$PORT.txt 2>&1

