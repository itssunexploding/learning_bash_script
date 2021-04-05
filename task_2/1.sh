#!/bin/bash

# Bash cript for uniting all .txt files in directory in one file 
# @param strDirPath Path to dir, in which all .txt files will be united
       
strDirPath=$1

cd $strDirPath

for file in `ls $strDirPath`
do
  if [[  "$file" =~ \.txt$ ]]
  then
     cat $file >>all.txt
  fi     
done  
