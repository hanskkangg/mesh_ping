#!/bin/bash

# Usage: ./mesh_ping.sh sources.txt targets.txt results.log

# Input files and output log
sources_file=$1
targets_file=$2
output_file=$3

# Colors for highlighting
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if files exist
if [[ ! -f $sources_file || ! -f $targets_file ]]; then
    echo "Error: Source or target file not found."
    exit 1
fi

# Clear or create the output log file
> "$output_file"

echo "Starting mesh ping..."

while IFS= read -r source; do
    # Skip comments and empty lines
    [[ -z "$source" || "$source" =~ ^# ]] && continue

    while IFS= read -r target; do
        # Skip comments and empty lines
        [[ -z "$target" || "$target" =~ ^# ]] && continue

        echo "Pinging from $source to $target..."

        # Perform the ping
        ping -c 1 "$target" > /dev/null 2>&1
        if [[ $? -eq 0 ]]; then
            echo "$source -> $target: SUCCESS" | tee -a "$output_file"
        else
            echo -e "$source -> $target: ${RED}FAIL${NC}" | tee -a "$output_file"
        fi
    done < "$targets_file"
done < "$sources_file"

echo "Mesh ping completed. Results saved to $output_file."

