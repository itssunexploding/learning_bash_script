#!/bin/bash

source ./lib/file_helper.sh

#lengthCheckAndCut HOME

#echo 'Enter file name:'

read -p "Enter file name:" strFileName

# We find needed file's name in current directory
# and all coincidences send to $arrFileDir
# excluding error messages 
arrFileDir=$(find $PWD -type f -name "$strFileName" 2>/dev/null) 
 
# !!!WARNING!!!
# Change ENV, now every loop will not interpret 'space' as separator 
IFS=$'\n'

if [[ -z $arrFileDir ]]
    then
        echo 'No such file in directory'
        lengthCheckAndCut $strFileName
        #echo "$strFileName" | cut -c 5-
    else    
        for var in $arrFileDir
            do
                if [[ "$var" == *"$strFileName"* ]]
                    then
                        cat $var
                fi
            done
fi
