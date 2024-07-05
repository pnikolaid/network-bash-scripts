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

# Name for the screen session
SCREEN_NAME="iperf3_server_ul_$PORT"

# Start iperf3 server within a new detached screen session
screen -dmS "$SCREEN_NAME" bash -c "iperf3 -s -p $PORT --logfile /tmp/iperf3_ul.txt "

# Print a message indicating the server has started
echo "iperf3 server started on port $PORT in screen session $SCREEN_NAME"
