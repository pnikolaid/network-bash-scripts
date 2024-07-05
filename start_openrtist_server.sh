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


# Name of the screen session
SESSION_NAME="openrtist_server_$PORT"

# Command to run inside the screen session
COMMAND="python main.py --timing -p $PORT"

# Start a new screen session, run the command, and detach
screen -dmS $SESSION_NAME bash -c "$COMMAND"

