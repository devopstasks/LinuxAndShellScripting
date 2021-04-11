#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: for loop scripts for filesystem
#Date Modified: 04/10/2021

1 - Rename all *.txt files extension to none

for filename in *.txt
do
mv $filename ${filename%.txt}.none
done
---------------------------------------------------------------------

2 - Check to see if files exist
# List of files you are curious about
FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"
echo
for file in $FILES
do
	if [ ! -e "$file" ]       # Check if file exists.
	then
	echo $file = does not exist
	echo
	fi
done