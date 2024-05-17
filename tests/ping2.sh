#!/bin/sh

cd out/sysctl
for a in *.out; do
  if [ -s "$a" ]
  then
    echo -n "$a -> " && cat $a | grep "ping_group_range"
  fi
done

