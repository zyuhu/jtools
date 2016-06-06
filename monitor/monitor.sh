#!/bin/bash

echo "------------------------------------------------------"
echo "Beijing Servers:"
echo "------------------------------------------------------"
#210 
for number in 226 210 209 227 211 130
do
    echo "147.2.207.$number:" &
    sshpass -p susetesting ssh root@147.2.207.${number} screen -ls
    retval=$?
    case ${retval} in
        255)
            ssh root@147.2.207.${number} screen -ls
            ;;
        6)
            ssh root@147.2.207.${number} screen -ls
            ;;
    esac
done
for number in 166 110 111 159
do
    echo "147.2.208.$number:" &
    sshpass -p susetesting ssh root@147.2.208.${number} screen -ls 
    retval=$?
    case ${retval} in
        255)
            ssh-keygen -R 147.2.208.${number} -f /home/jnwang/.ssh/known_hosts
            ssh root@147.2.208.${number} screen -ls
            ;;
        6)
            ssh root@147.2.208.${number} screen -ls
            ;;
    esac
done

for number in 166 111 110
do
    echo "147.2.208.$number:" &
    sshpass -p susetesting ssh root@147.2.208.${number} screen -ls
    retval=$?
    case ${retval} in
        255)
            ssh root@147.2.208.${number} screen -ls
            ;;
        6)
            ssh root@147.2.208.${number} screen -ls
            ;;
    esac
done

echo "------------------------------------------------------"
echo "Nuermberg Servers:"
echo "------------------------------------------------------"

for number in 54 53
do
    echo "10.162.2.$number:" &
    sshpass -p susetesting ssh root@10.162.2.${number} screen -ls
    retval=$?
    case ${retval} in
        255)
            ssh root@10.162.2.${number} screen -ls
            ;;
        6)
            ssh root@10.162.2.${number} screen -ls
            ;;
    esac
done
