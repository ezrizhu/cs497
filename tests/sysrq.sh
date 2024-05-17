#!/bin/sh

cd out/kernel_config

for a in *.out
do
    if [ -s "$a" ]
    then
        echo "$a" && cat ../sysctl/$a | grep "sysrq" && cat $a | grep "CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE"
    fi
done
