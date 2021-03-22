#!/bin/bash

# Объединяет все файлы из введённой директории

dirName=$(find /home -type d -name "$1" 2>/dev/null)

cd $dirName

for file in `ls $dirName`
do
  if [[  "$file" =~ \.txt$ ]]
  then
     cat $file >>all.txt
  fi     
done  
