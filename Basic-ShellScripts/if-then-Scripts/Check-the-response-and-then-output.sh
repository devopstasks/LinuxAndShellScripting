#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example for Check the response and then output
#Date Modified: 03/22/2021

clear
echo
echo "What is your name?"
echo
read a
echo

echo Hello $a sir
echo

echo "Do you like working in IT? (y/n)"
read Like
echo

if [ "$Like" == y ]
then
echo You are cool

elif [ "$Like" == n ]
then
echo You should try IT, it’s a good field
echo
fi

