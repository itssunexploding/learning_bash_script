#!/bin/bash
read fileName 
filesDir=$(find /home -name "$fileName" 2>/dev/null)
IFS=$'\n'
if [ -z $filesDir ]
    then
        echo "$fileName" | cut -c 5-
    else    
        for var in $filesDir
            do
                if [[ "$var" == *"$fileName"* ]]
                    then
                        cat $var
                fi
            done
fi
