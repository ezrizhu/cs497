#!/bin/sh

cd out/sh

for a in *; do
    if [ -s "$a" ]
    then
        echo -n "$a: "
        cat $a | awk '{print $9, $10, $11}'
    fi
done

