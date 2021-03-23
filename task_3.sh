#!/bin/bash

read dirName

dirPath=$(find /home -type d -name "$dirName" 2>/dev/null) 

cd $dirPath
 
i=0
LIMIT=297   

while [[ $i -le $LIMIT ]]
do
  mkdir $i
  let "i+=3"
done
