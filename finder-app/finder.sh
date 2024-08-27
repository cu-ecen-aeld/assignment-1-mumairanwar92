#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory."
    exit 1
fi

total_files=$(find "$filesdir" -type f | wc -l)
match_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)
echo "The number of files are $total_files and the number of matching lines are $match_lines"

# echo "Listing all matching lines:"
# grep -r "$searchstr" "$filesdir" 2>/dev/null

exit 0