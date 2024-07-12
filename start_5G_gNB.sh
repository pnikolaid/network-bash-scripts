#!/bin/bash

# Name of the screen session
SESSION_NAME="gNB"

# Command to run inside the screen session
cd ../custom-openairinterface5g/cmake_targets/ran_build/build
COMMAND="sudo ./nr-softmodem -O ../../../targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf --sa -E --continuous-tx"

# Start a new screen session, run the command, and detach
screen -dmS $SESSION_NAME bash -c "$COMMAND"

