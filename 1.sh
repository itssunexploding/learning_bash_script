#!/bin/bash

# Объединяет все файлы из введённой директории

dirPath=$(find /home -type d -name "$1" 2>/dev/null)

cd $dirPath

for file in `ls $dirPath`
do
  if [[  "$file" =~ \.txt$ ]]
  then
     cat $file >>all.txt
  fi     
done  
