#!/bin/bash

# Directory to clean
DIR="/tmp"

# File patterns to clean
PATTERNS=("recv" "sent" "iperf3")

# Iterate over each pattern and clean matching files
for pattern in "${PATTERNS[@]}"; do
    # Find files matching the pattern and truncate them
    find "$DIR" -type f -name "${pattern}*" -exec sh -c '> {}' \;
done
