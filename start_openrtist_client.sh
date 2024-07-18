#!/bin/bash

cd ../openrtist/python-client
source venv/bin/activate
export QT_QPA_PLATFORM=offscreen


# Defaults 
DEFAULT_PORT=9099
DEFAULT_DURATION=100

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

./src/openrtist/sinfonia_wrapper.py -v ./Big_Buck_Bunny_1080_10s_5MB.mp4 -c 192.168.70.129:$PORT --quiet True -u $DURATION >> ~/panos/command_outputs/openrtist_client_$PORT.txt 2>&1

