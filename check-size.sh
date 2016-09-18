#!/bin/bash

cd /home

# Find all directories above 10GB
directories=$(du -sm * | awk '$1 > 10000' | cut -f2)

while read -r user; do
    # Send email to user
    echo $user
done <<< "$directories"
