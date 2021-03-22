#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 03/22/2021
#Description: This script is Example of Read input and perform a task
#Date Modified: 03/22/2021

echo Enter the file name to be renamed
read oldfilename

echo Enter the new file name
read newfilename

mv $oldfilename $newfilename
echo The file has been renamed as $newfilename
