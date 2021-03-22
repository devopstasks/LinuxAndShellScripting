#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example for Check if a file error.txt exist
#Date Modified: 03/22/2021

clear
if [ -e /home/osboxes/error.txt ]

        then
        echo "File exist"
        else
        echo "File does not exist"
fi