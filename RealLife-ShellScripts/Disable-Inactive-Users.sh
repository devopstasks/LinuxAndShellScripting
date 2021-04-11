#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: This Script to disable users accounts
#Date Modified: 04/10/2021

#Run commands to identify users
#Create a script in For loop to disable inactive accounts
#Create a script with xargs to disable inactive accounts

Script to disable users accounts

Test Commands

lastlog -b 90

lastlog -b 90 | tail -n+2

lastlog -b 90 | tail -n+2 

lastlog | tail -n+2 | grep 'test' | awk '{print $1}'




Disable account with For loop

#!/bin/bash

a=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`

for i in $a
do
usermod -L $i
done




Disable using xargs

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} echo {}


lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}