#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: This script List of Users Logged in Today
#Date Modified: 04/10/2021

today=`date | awk '{print $1,$2,$3}'`
#last | grep $today | awk '{print $1}'
last | grep "$today"

#Ask for Input
echo "please enter day (e.g. Mon)"
read d
echo "please enter month (e.g. Aug)"
read m
echo "please enter date (e.g. 28)"
read da
last | grep "$d $m $da"