#!/bin/sh

cd out/procfs

for a in *; do
    if [ -s "$a" ]
    then
        cat $a |
            awk '! /^[0-9]+$/' - |
            sort > $a.result
    fi
done

