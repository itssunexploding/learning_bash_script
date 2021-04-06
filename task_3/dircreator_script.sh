#!/bin/bash

read -p "Enter directory name: " strDirName

# We find needed directory's name in current directory
# and all coincidences send to $arrDirPaths
# excluding error messages 
arrDirPaths=$(find $PWD -type d -name "$strDirName" 2>/dev/null)

LIMIT=297

# Nested "while" loop gives us a possibility to
# create directories in EVERY found directory
for var in $arrDirPaths
  do
    let "i=0"
    cd $var
    while [[ $i -le $LIMIT ]]
    do
      mkdir $i
      let "i+=3"
    done
  done