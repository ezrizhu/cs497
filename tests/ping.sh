#!/bin/sh

cd out/unshare_ping
for a in *.err; do
  if [ -s "$a" ]
  then
    echo -n "$a -> " && cat $a | tr "\n" " "
    echo
  fi
done

