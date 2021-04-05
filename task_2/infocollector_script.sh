#!/bin/bash

read -p "Enter directory name: " strDirName    

# We find needed directory/ies in the current directory
# and all name coincidences send to $arrFoundNameCoinc
# excluding error messages
arrFoundNameCoinc=$(find $PWD -type d -name "$strDirName" 2>/dev/null )

# !!!WARNING!!!
# Change ENV, now every loop will not interpret 'space' as separator 
IFS=$'\n'

if [[ -z $arrFoundNameCoinc ]]
    then
        echo 'Directory does not exist'
        exit 
    else
        for var in $arrFoundNameCoinc
            do
                ./1.sh $var
                ./2.sh $var $strDirName
            done
fi        
