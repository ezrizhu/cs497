#!/bin/sh

cd out/ldd
for a in *; do
  if [ -s "$a" ]
  then
    echo -n "$a -> " && head -n1 "$a"
  fi
done

