#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/09/2021
#Description: Schedule a script execution using cron job
#Date Modified: 04/09/2021

#Schedule a script execution using cron job
#crontab -e
#34 20 * * * /home/osboxes/RealLife-ShellScripts/Ping-multiple-hosts.sh > /home/osboxes/ping_output

#mailing the script execution status 
#34 20 * * * /home/osboxes/RealLife-ShellScripts/Ping-multiple-hosts.sh | mail -s "Connectivity status" rkp@hotmail.com

#Schedule a script to run a backup of all your user accounts at 5 a.m every week with:
#crontab -e
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
