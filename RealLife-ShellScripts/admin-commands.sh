#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/08/2021
#Description: This script will format the output of admin commands
#Date Modified: 04/08/2021

date | awk '{print $1}'
uptime | awk '{print $3}'
df -h | grep root