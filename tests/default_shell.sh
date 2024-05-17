#!/bin/sh

cd out/default_shell
for a in *; do
  if [ -s "$a" ]
  then
    echo -n "$a -> " && cat "$a"
    echo
  fi
done

