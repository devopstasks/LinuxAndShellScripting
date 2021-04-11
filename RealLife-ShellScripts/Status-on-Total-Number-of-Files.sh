#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/11/2021
#Description: This script check Status on Total Number of Files 
#(Send alert if files are less than 20)
#Date Modified: 04/11/2021

#Run the command 'ls -l' with different option
#Create a script to perform comparison
#Schedule and notify

Status on Total Number of Files (Send alert if files are less than 20)
=======================================================================


# First create 20 files

touch file{1..20}.txt


---------------------------------------------------

Now create a script:

#!/bin/bash

a=`ls -l file* | wc -l`

	if [ $a -eq 20 ]
	then
	echo Yes there are $a files
	else
	echo Files are less than 20
	fi


