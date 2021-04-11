#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/11/2021
#Description: This script is for Disk Space Check
#Date Modified: 04/11/2021

Disk Space Check
=================


# Check the filesystem 

df -h


# Remove un-wanted rows

df -h | egrep -v "Filesystem|tmpfs"



# Get 5th and 6th column

df -h | egrep -v "Filesystem|tmpfs" | awk '{print $5, $6}'


df -h | egrep -v "Filesystem|tmpfs" | awk '{print $5}' | cut -d'%' -f1`

--------------------------------------------

First For loop script

vi checkdisk


#!/bin/bash


a=`df -h | egrep -v "tmpfs|devtmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
        if [ $i -ge 50 ]
        then
        echo Check disk space $i `df -h | grep $i`
        fi
done


--------------------------------------------

Second do while loop script

vi checkdisk1



Another way:
#!/bin/sh

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5,$1}' | while read output
do
        usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1  )
        partition=$(echo $output | awk '{print $2}' )
        
	if [ $usep -ge 90 ]
	then
        echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
        fi
done


--------------------------------------------

Or Simply

Write a script to awk only those rows with the value


df -h | awk '0+$5 >= 10 {print}'


To make it presentable

echo
echo Following is the disk space status
echo
df -h | awk '0+$5 >= 10 {print}' | awk '{print $5, $6}'

