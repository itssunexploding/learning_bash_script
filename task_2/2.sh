#!/bin/bash

# Bash script for gathering info about directory
# @param strDirPath Path to dir, which info we want to gather
# @param strDirName Name of dir, which info we want to gather

strDirPath=$1

strDirName=$2

cd $strDirPath
cd ..        

# !!!WARNING!!!
# Change ENV, now every loop will not interpret 'space' as separator 
IFS=$'\n'

for directory in `ls -lh`       
do  
  if [[ "$directory" == *"$strDirName"* ]]
    then
        echo $directory >>info.txt
  fi      
done
