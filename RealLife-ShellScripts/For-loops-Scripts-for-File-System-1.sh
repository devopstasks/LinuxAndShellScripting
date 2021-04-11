#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: for loop scripts for filesystem
#Date Modified: 04/10/2021

1 - Simple counting:
for i in {1..25}
do
	sleep 1
	echo $i
done

--------------------------------------------------
2 - Create multiple files with different names
for i in {1..10}
do
	touch radha.$i
done
--------------------------------------------------
3 - Create multiple files upon input
echo How many files do you want?
read t
echo
echo Files names should start with?
read n
for i in $(seq 1 $t)
do
	touch $n.$i
done
--------------------------------------------------
4 - Assign write permissions to files
for i in radha*
do
	echo Assigning write permissions to $i
    chmod a+w $i
	sleep 1
done
--------------------------------------------------
5 - Assign write permissions to files with total time it will take

total=`ls -l radha* | wc -l`
echo It will take $total seconds to assign permissions...
echo
for i in radha*
do
	echo Assigning write permissions to $i
	chmod a+w $i
    sleep 1
done