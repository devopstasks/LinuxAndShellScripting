#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example for Check if a variable value is met
#Date Modified: 03/22/2021

clear
a=`date | awk '{print $1}'`

if [ "$a" == Mon ]

        then
        echo Today is $a
        else
        echo Today is not Monday
fi
