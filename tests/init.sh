#!/bin/sh

read input
echo "$input" | awk -F '/' '{print $NF}'
