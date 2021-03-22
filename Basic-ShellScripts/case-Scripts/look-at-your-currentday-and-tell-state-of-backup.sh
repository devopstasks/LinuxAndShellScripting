#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script will look at your current day and tell you the state of the backup
#Date Modified: 03/22/2021

NOW=$(date +"%a")
case $NOW in
	Mon)	
		echo "Full backup";;
	Tue|Wed|Thu|Fri)
		echo "Partial backup";;
	Sat|Sun)	
		echo "No backup";;
	*) ;;
esac
