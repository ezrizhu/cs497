#!/bin/sh

cd out/secure_path

for a in *; do
    if [ -s "$a" ]
    then
        echo -n "$a: "
        cat $a |
            grep secure_path |
            # uses the field separator '=' to split each line into fields
            # $NF represents the last field
            awk -F'=' '{print $NF}' - |
            # removes any leading or trailing whitespace from the path
            awk '{$1=$1};1' - 
    fi
done

