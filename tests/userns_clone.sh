#!/bin/sh

cd out/userns_clone
for a in *.out; do
  if [ -s "$a" ]
  then
    echo -n "$a -> " && cat $a
    echo
  fi
done

