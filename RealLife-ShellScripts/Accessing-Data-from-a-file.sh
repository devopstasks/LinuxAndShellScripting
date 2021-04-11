#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/08/2021
#Description: This script will pull error,warn,fail messaages from a file
#Readhat-/var/log/messges, Ubuntu- /var/log/syslog*
#Date Modified: 04/08/2021

echo "########Error Messages##########"
grep -i error /home/osboxes/RealLife-ShellScripts/messages/syslog*
echo
echo
echo "####### Warn Messages###########"
grep -i warn /home/osboxes/RealLife-ShellScripts/messages/syslog*
echo
echo
echo "####### Fail Messages###########"
grep -i fail /home/osboxes/RealLife-ShellScripts/messages/syslog*
