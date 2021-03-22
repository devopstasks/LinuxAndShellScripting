#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example of List all users one by one from /etc/passwd file
#Date Modified: 03/22/2021

i=1
for username in `awk -F: '{print $1}' /etc/passwd`
do
 echo "Username $((i++)) : $username"
done
