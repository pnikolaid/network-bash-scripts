#!/bin/bash

# Directory to clean
DIR="/tmp"

# File patterns to clean
PATTERNS=("sent*" "recv*" "iperf3*")

# Iterate over each pattern and truncate matching files
for pattern in "${PATTERNS[@]}"; do
    # Use truncate command to clear file contents
    find "$DIR" -type f -name "${pattern}" -exec truncate -s 0 {} +
done

echo "Cleanup complete: Cleared contents of files starting with sent, recv, or iperf3 in /tmp."
