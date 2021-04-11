#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/08/2021
#Description: This script will check the status of a multiple remote hosts
#Date Modified: 04/08/2021

# &> /dev/null - By using this, the output of ping is not shown in screen

hosts="/home/osboxes/RealLife-ShellScripts/hosts"

for ip in $(cat $hosts)
do
    ping -c1 $ip &> /dev/null
         if [ $? -eq 0  ]
         then
            echo "$ip is OK"
         else
            echo "$ip is Not OK"
         fi
done
