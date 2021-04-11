#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/08/2021
#Description: This script will check the status of a remote hosts
#Date Modified: 04/08/2021

# &> /dev/null - By using this, the output of ping is not shown in screen

echo "Enter hostname to check the status"
read hostname
ping -c1 $hostname &> /dev/null
         if [ $? -eq 0  ]
         then
            echo "$hostname is OK"
         else
            echo "$hostname is Not OK"
         fi