#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

writefile=$1
writestr=$2

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

if echo "$writestr" > "$writefile"; then
    echo "File '$writefile' created successfully with content:"
    cat "$writefile"
else
    echo "Error: Could not create file '$writefile'."
    exit 1
fi

exit 0

