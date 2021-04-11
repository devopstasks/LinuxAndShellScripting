#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: This script Check if the directories in /home are assigned to a user
#Date Modified: 04/10/2021

#Become root
#cd /home
#mkdir junos
#mkdir tsetuser

cd /home
for DIR in *
do
        CHK=$(grep -c "/home/$DIR" /etc/passwd)
        if [ $CHK -ge 1 ]
        then
                echo "$DIR is assigned to a user"
        else
                echo "$DIR is NOT assigned to a user"
        fi

done
