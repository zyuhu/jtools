#!/bin/bash

for number in 210 211 209 163 114
do
    echo 147.2.207.$number:
    sshpass -p "susetesting" scp -r root@147.2.207.${number}:$@ $@.$number
done

for number in 53 54
do
    echo 10.162.2.$number:
    sshpass -p "susetesting" scp -r root@10.162.2.${number}:$@ $@.$number
done
