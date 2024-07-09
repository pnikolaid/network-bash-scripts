#!/bin/bash

# Directory to clean
DIR="/tmp"

# File patterns to remove
PATTERNS=("recv" "sent" "iperf3")

# Iterate over each pattern and remove matching files
for pattern in "${PATTERNS[@]}"; do
    # Find files matching the pattern and delete them
    find "$DIR" -type f -name "${pattern}*" -exec rm -f {} \;
done
