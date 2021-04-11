#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/09/2021
#Description: This script will take backup of filesystem
#Date Modified: 04/09/2021

#Take backup of /etc and /var directory
#first tar it and then zip it
tar cvf /tmp/backup.tar /etc /tmp
gzip /tmp/backup.tar

#Check backup status and transfer
find backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
    echo Backup was created
    echo
    echo Archiving backup
    scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
    echo Backup failed
fi