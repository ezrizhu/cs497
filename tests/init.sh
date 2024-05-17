#!/bin/sh

cd out/init

for a in *
do
    if [ -s "$a" ]
    then
        echo -n "$a -> " && cat $a | awk -F '/' '{print $NF}'
    fi
done
