#!/bin/sh
while read -r line; do
    echo "$line" | awk '{print $9, $10, $11}'
done
