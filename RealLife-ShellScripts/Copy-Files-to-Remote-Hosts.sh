#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: This script is copy a file to a list of remote hosts
#Date Modified: 04/10/2021

HOSTS=`cat /home/osboxes/remotehosts`
for host in $HOSTS
do
	scp somefile $host:/var/tmp/
done