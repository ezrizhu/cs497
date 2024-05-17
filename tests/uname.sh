#!/bin/sh

cd out/uname

for a in *; do
    if [ -s "$a" ]
    then
        echo -n "$a: "
        cat $a
        echo
    fi
done

