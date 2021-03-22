#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example of choose one of the options
#Date Modified: 03/22/2021

echo
echo Please chose one of the options below
echo
echo 'a = Display Date and Time'
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check System uptime'
echo

read choices
case $choices in
	a) date;;
	b) ls;;
	c) who;;
	d) uptime;;
	*) echo Invalid choice - Bye.
esac
