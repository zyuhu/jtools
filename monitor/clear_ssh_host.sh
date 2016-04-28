#!/bin/bash

echo "------------------------------------------------------"
echo "Beijing Servers:"
echo "------------------------------------------------------"
#210 
for number in 163 210 209 114 211 130
do
    echo "147.2.207.$number:" &
    ssh-keygen -R 147.2.207.${number} -f /home/jnwang/.ssh/known_hosts
done

echo "------------------------------------------------------"
echo "Nuermberg Servers:"
echo "------------------------------------------------------"

for number in 54 53
do
    echo "10.162.2.$number:" &
    ssh-keygen -R 10.162.2.${number} -f /home/jnwang/.ssh/known_hosts
done
