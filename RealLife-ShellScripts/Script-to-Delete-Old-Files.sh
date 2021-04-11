#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/09/2021
#Description: Script to delete old files
#Date Modified: 04/09/2021

#Create script to delete files as specified
#Create files with older timestamp
#Find and delete files older than 90 days
#Find and rename old files

#Create files with older timestamp
touch -d "Thu, 1 March 2018 12:30:00" file1.txt
touch -d "Thu, 1 March 2018 12:30:00" file2.txt
touch -d "Thu, 1 March 2018 12:30:00" file3.txt
touch -d "Thu, 1 March 2018 12:30:00" file4.txt

#Find files with specific pattern
find /home/osboxes/ -name file\*

#Find files older than 90 days
find /home/osboxes/ -mtime +90 -exec ls -l {} \; 

#Delete files older than 90 days
find /home/osboxes/ -mtime +90 -exec rm {} \; 

#Find and rename old files
find /home/osboxes/ -mtime +90 -exec mv {} {}.old \; 
