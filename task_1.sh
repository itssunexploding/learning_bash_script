#!/bin/bash
read fileName 
filesDir=$(find /home -name $fileName)
filePresence=0
IFS=$'\n'
for var in $filesDir
    do
        if [[ "$var" == *"$fileName"* ]]
            then
                echo $(cat $var)
                filePresence=1
        fi
    done
if [ $filePresence -eq 0 ]
    then
        echo "$fileName" | cut -c 5-
fi
