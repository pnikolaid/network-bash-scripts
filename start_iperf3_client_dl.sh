#!/bin/bash

# Defaults 
DEFAULT_PORT=5201
DEFAULT_DURATION=10
DEFAULT_RATE=1M

# Check if a port number is provided as an argument
if [ -z "$1" ]; then
  echo "No port provided, using default port $DEFAULT_PORT"
  PORT=$DEFAULT_PORT
else
  PORT=$1
fi

# Check if a duration is provided as the second argument
if [ -z "$2" ]; then
  echo "No duration provided, using default duration $DEFAULT_DURATION"
  DURATION=$DEFAULT_DURATION
else
  DURATION=$2
fi

if [ -z "$3" ]; then
  echo "No bitrate provided, using default bitrate $DEFAULT_RATE"
  RATE=$DEFAULT_RATE
else
  RATE=$3
fi

# Name of the screen session
SESSION_NAME="iperf3_client_dl_$PORT"

# Command to run inside the screen session
COMMAND="iperf3 -c 192.168.70.129 -p $PORT -u -b $RATE -R -t $DURATION -T $PORT -f m --logfile /tmp/iperf3_dl.txt"

# Start a new screen session, run the command, and detach
screen -dmS $SESSION_NAME bash -c "$COMMAND"

echo "Issued $COMMAND in screen $SESSION_NAME"
