#!/bin/sh

cd out/root

for a in *; do
    if [ -s "$a" ]
    then
        cat $a |
            while read -r line; do
                echo "$line" | awk '{print $9, $10, $11}'
            done | sort > $a.result
    fi
done

