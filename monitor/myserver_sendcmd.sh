#!/bin/bash

for number in 114
do
    echo 147.2.207.$number:
    sshpass -p susetesting ssh root@147.2.207.${number} $@
done

