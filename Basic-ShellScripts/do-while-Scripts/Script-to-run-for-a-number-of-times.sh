#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example of Script to run for a number of times
#Date Modified: 03/22/2021

c=1
while [ $c -le 5 ]
do
	echo "Welcome $c times"
	(( c++ ))
done
